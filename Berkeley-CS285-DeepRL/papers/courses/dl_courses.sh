#!/usr/bin/env bash
# Course-materials downloader.
# Reads courses_manifest.tsv:  URL <TAB> subdir <TAB> filename
#   - lines starting with # are comments; blank lines skipped
# Serial (one download at a time — this pipe starves under parallel pulls).
# Validates PDFs: %PDF header + EOF trailer. Idempotent: skips already-valid files.
# Non-PDF (html/zip) validated by size>0 only.
# Usage: bash dl_courses.sh [manifest.tsv]   (default: courses_manifest.tsv)
set -u
cd "$(dirname "$0")"
MANIFEST="${1:-courses_manifest.tsv}"
LOG="dl_courses.log"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0 Safari/537.36"
echo "==== START $(date '+%H:%M:%S') manifest=$MANIFEST ====" >> "$LOG"

valid_pdf () {  # $1=file -> 0 if looks like a complete PDF
  [ -s "$1" ] || return 1
  [ "$(head -c4 "$1" 2>/dev/null)" = "%PDF" ] || return 1
  [ "$(tail -c 2048 "$1" 2>/dev/null | grep -c EOF)" -ge 1 ] || return 1
  return 0
}

ok=0; fail=0; skip=0
while IFS=$'\t' read -r url subdir fname; do
  case "$url" in ''|\#*) continue;; esac
  [ -z "${fname:-}" ] && continue
  mkdir -p "$subdir"
  dest="$subdir/$fname"
  is_pdf=0; case "$fname" in *.pdf) is_pdf=1;; esac

  # idempotent skip
  if [ "$is_pdf" = 1 ]; then
    if valid_pdf "$dest"; then
      sz=$(stat -c%s "$dest" 2>/dev/null); echo "SKIP  $dest ($((sz/1024))KB, valid)" >> "$LOG"; skip=$((skip+1)); continue
    fi
  else
    if [ -s "$dest" ]; then
      sz=$(stat -c%s "$dest" 2>/dev/null); echo "SKIP  $dest ($((sz/1024))KB, exists)" >> "$LOG"; skip=$((skip+1)); continue
    fi
  fi

  # download with up to 4 resume rounds
  got=0
  for try in 1 2 3 4; do
    curl -skL -C - --max-time 280 -A "$UA" -o "$dest" "$url" 2>/dev/null
    if [ "$is_pdf" = 1 ]; then
      if valid_pdf "$dest"; then got=1; break; fi
    else
      if [ -s "$dest" ]; then got=1; break; fi
    fi
    sz=$(stat -c%s "$dest" 2>/dev/null || echo 0)
    echo "  ..try=$try size=$((sz/1024))KB not-yet-valid, resuming" >> "$LOG"
    sleep 2
  done

  if [ "$got" = 1 ]; then
    sz=$(stat -c%s "$dest" 2>/dev/null)
    echo "OK    $dest ($((sz/1024))KB)" >> "$LOG"; ok=$((ok+1))
  else
    sz=$(stat -c%s "$dest" 2>/dev/null || echo 0)
    echo "FAIL  $dest ($((sz/1024))KB) <- $url" >> "$LOG"; fail=$((fail+1))
    [ -f "$dest" ] && [ "$sz" -eq 0 ] && rm -f "$dest"
  fi
done < "$MANIFEST"

echo "==== DONE $(date '+%H:%M:%S')  ok=$ok skip=$skip fail=$fail ====" >> "$LOG"
