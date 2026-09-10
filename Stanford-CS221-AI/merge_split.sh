#!/bin/bash
# Merge CS221 lectures 10-19 that were downloaded as separate video+audio streams
# (bot-detection interrupted yt-dlp before its own ffmpeg merge step).
FFMPEG="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin/ffmpeg.exe"
cd /d/George/ICT/Paper/CS221-AI/videos || exit 1

for vid in *.f*.mp4; do
  [ -e "$vid" ] || continue
  base=$(echo "$vid" | sed -E 's/\.f[0-9]+(-[0-9]+)?\.mp4$//')
  out="${base}.mp4"
  if [ -f "$out" ]; then echo "skip (exists): $out"; continue; fi

  audio=$(ls "${base}".f*.m4a 2>/dev/null | head -1)
  if [ -z "$audio" ]; then echo "NO AUDIO for: $base"; continue; fi

  ensrt="${base}.en.srt"
  zhsrt="${base}.zh-Hans.srt"

  args=(-i "$vid" -i "$audio")
  maps=(-map 0:v:0 -map 1:a:0)
  n=2
  if [ -f "$ensrt" ]; then args+=(-i "$ensrt"); maps+=(-map ${n}:0); en_idx=$n; n=$((n+1)); fi
  if [ -f "$zhsrt" ]; then args+=(-i "$zhsrt"); maps+=(-map ${n}:0); zh_idx=$n; n=$((n+1)); fi

  meta=()
  s=0
  if [ -f "$ensrt" ]; then meta+=(-metadata:s:s:$s language=eng -metadata:s:s:$s title=English); s=$((s+1)); fi
  if [ -f "$zhsrt" ]; then meta+=(-metadata:s:s:$s language=chi -metadata:s:s:$s title="Chinese Simplified"); s=$((s+1)); fi

  echo "=== merging: $out ==="
  "$FFMPEG" -y -hide_banner -loglevel error \
    "${args[@]}" "${maps[@]}" \
    -c:v copy -c:a copy -c:s mov_text "${meta[@]}" \
    "$out" </dev/null
  if [ $? -eq 0 ] && [ -f "$out" ]; then
    echo "OK: $out ($(wc -c < "$out") bytes)"
    rm -f "$vid" "$audio"
  else
    echo "FAILED: $out"
    rm -f "$out"
  fi
done
echo "=== CS221 merge DONE ==="
ls *.mp4 | grep -vE '\.f[0-9]+' | wc -l