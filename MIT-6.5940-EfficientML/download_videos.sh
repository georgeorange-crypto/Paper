#!/bin/bash
# Download MIT 6.5940 EfficientML lecture videos (Fall 2024)
export PATH="/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"
cd /d/George/ICT/Paper/MIT-6.5940-EfficientML/videos || exit 1

yt-dlp \
  --ffmpeg-location "$FFMPEG_DIR" \
  -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=1080]+bestaudio/best[height<=1080]" \
  --merge-output-format mp4 \
  --write-subs --write-auto-subs \
  --sub-langs "en,en-US,zh-Hans" \
  --sub-format "srt/vtt/best" \
  --convert-subs srt \
  --embed-subs \
  --write-thumbnail --write-description --write-info-json \
  --output "%(playlist_index)02d - %(title)s.%(ext)s" \
  --download-archive "download_archive.txt" \
  --no-overwrites --continue \
  --ignore-errors --retries 10 --fragment-retries 10 \
  "https://www.youtube.com/playlist?list=PL80kAHvQbh-qGtNc54A6KW4i4bkTPjiRF" 2>&1
echo "=== MIT 6.5940 videos DONE ==="
