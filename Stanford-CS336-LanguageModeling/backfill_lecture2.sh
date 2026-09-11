#!/bin/bash
# Backfill missing Lecture 2 aux files (zh-Hans auto-sub, description, thumbnail)
# Run after YouTube 429 rate-limit clears.
export PATH="/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"
cd /d/George/ICT/Paper/CS336-Spring2026/videos || exit 1

NAME="02 - Stanford CS336 Language Modeling from Scratch ｜ Spring 2026 ｜ Lecture 2： PyTorch (einops)"
URL="https://www.youtube.com/watch?v=kuYAsz7zspQ"

# Retry loop with backoff for the rate limit
for attempt in $(seq 1 20); do
  out=$(yt-dlp --ffmpeg-location "$FFMPEG_DIR" \
    --skip-download \
    --write-auto-subs --sub-langs "zh-Hans" --convert-subs srt \
    --write-description --write-thumbnail \
    -o "${NAME}.%(ext)s" \
    "$URL" 2>&1)
  if echo "$out" | grep -qiE "429|Too Many Requests"; then
    echo "[attempt $attempt] rate-limited, sleeping 60s"
    sleep 60
    continue
  fi
  # success or a different (non-rate-limit) outcome -> stop
  echo "$out" | grep -iE "writing|converting|has already" | head -5
  break
done

echo "=== backfill result ==="
ls -la "${NAME}.zh-Hans.srt" "${NAME}.description" 2>/dev/null
echo "=== final zh-Hans count ==="
ls *.zh-Hans.srt 2>/dev/null | wc -l
