#!/usr/bin/env bash
# Download arXiv PDFs from a manifest. Idempotent, validates each PDF, retries, logs.
# manifest.tsv columns (tab-separated):  arxiv_id <TAB> subdir <TAB> filename.pdf
# Lines beginning with # are skipped.
set -u
BASE="D:/George/ICT/Paper/CS285-Spring2026/papers"
MANIFEST="$BASE/manifest.tsv"
LOG="$BASE/download.log"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/120.0 Safari/537.36"

ok=0; skip=0; fail=0
echo "[$(date)] ==== download run start ====" >> "$LOG"
while IFS=$'\t' read -r id sub fname; do
  # skip blanks / comments
  [ -z "${id:-}" ] && continue
  case "$id" in \#*) continue;; esac
  dest="$BASE/$sub/$fname"
  # idempotent: skip if already a valid PDF
  if [ -f "$dest" ] && [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ]; then
    echo "SKIP  $id ($sub/$fname)"; skip=$((skip+1)); continue
  fi
  mkdir -p "$BASE/$sub"
  success=0
  for attempt in 1 2 3; do
    code=$(curl -skL --max-time 60 -A "$UA" -o "$dest" -w "%{http_code}" "https://arxiv.org/pdf/$id" 2>/dev/null)
    if [ "$(head -c4 "$dest" 2>/dev/null)" = "%PDF" ]; then
      sz=$(wc -c < "$dest")
      echo "OK    $id -> $sub/$fname  (http=$code size=$sz try=$attempt)"
      echo "[$(date)] OK $id $sub/$fname http=$code size=$sz try=$attempt" >> "$LOG"
      success=1; ok=$((ok+1)); break
    fi
    sleep 2
  done
  if [ "$success" -eq 0 ]; then
    echo "FAIL  $id ($sub/$fname) last_http=$code"
    echo "[$(date)] FAIL $id $sub/$fname http=$code" >> "$LOG"
    rm -f "$dest" 2>/dev/null
    fail=$((fail+1))
  fi
done < "$MANIFEST"
echo "==== done: ok=$ok skip=$skip fail=$fail ===="
echo "[$(date)] ==== run end ok=$ok skip=$skip fail=$fail ====" >> "$LOG"
