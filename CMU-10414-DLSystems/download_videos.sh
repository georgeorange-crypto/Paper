#!/bin/bash
# Download CMU 10-414/714 Deep Learning Systems videos (Tianqi Chen & Zico Kolter)
# Individual video URLs from dlsyscourse.org/lectures (no official playlist)
DENO_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/DenoLand.Deno_Microsoft.Winget.Source_8wekyb3d8bbwe"
export PATH="$DENO_DIR:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"
COOKIES="/d/George/ICT/Paper/yt-cookies.txt"
cd /d/George/ICT/Paper/CMU-10414-DLSystems/videos || exit 1

urls=(
  "01|https://youtu.be/ftP5HeOvsI0"
  "02|https://youtu.be/MlivXhZFbNA"
  "03a|https://youtu.be/OyrqSYJs7NQ"
  "03b|https://youtu.be/JLg1HkzDsKI"
  "04|https://youtu.be/56WUlMEeAuA"
  "05|https://youtu.be/cNADlHfHQHg"
  "06|https://youtu.be/CukpVt-1PA4"
  "07|https://youtu.be/fzKNkS_5E6U"
  "08|https://www.youtube.com/watch?v=ky7qiKyZmnE"
  "09|https://youtu.be/uB81vGRrH0c"
  "10|https://youtu.be/-5RPPjn0hPg"
  "11|https://youtu.be/es6s6T1bTtI"
  "12|https://youtu.be/jYCxVirq4d0"
  "13|https://youtu.be/XdhUZRXA7fg"
  "14|https://youtu.be/7kclgMIcMq0"
  "15|https://youtu.be/aI47BqLYahc"
  "16|https://youtu.be/q12VPh-bK7k"
  "17|https://youtu.be/IFKRf-BAqZo"
  "18|https://youtu.be/OzFmKdAHJn0"
  "19|https://youtu.be/HSzVogM5IPo"
  "20|https://youtu.be/iIx_8_pxzhs"
  "21|https://youtu.be/DmBw8SEeAc0"
  "23|https://youtu.be/jCBrUisBQ0A"
)

for entry in "${urls[@]}"; do
  num="${entry%%|*}"
  url="${entry##*|}"
  yt-dlp \
    --js-runtimes deno \
    --cookies "$COOKIES" \
    --ffmpeg-location "$FFMPEG_DIR" \
    -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=1080]+bestaudio/best[height<=1080]" \
    --merge-output-format mp4 \
    --write-subs --write-auto-subs \
    --sub-langs "en,en-US,zh-Hans" \
    --sub-format "srt/vtt/best" \
    --convert-subs srt \
    --embed-subs \
    --write-thumbnail --write-description --write-info-json \
    --output "${num} - %(title)s.%(ext)s" \
    --download-archive "download_archive.txt" \
    --no-overwrites --continue \
    --ignore-errors --retries 10 --fragment-retries 10 \
    "$url" 2>&1
done

echo "=== CMU 10-414 videos ALL DONE ==="