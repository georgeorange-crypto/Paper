#!/bin/bash
# Download CMU 11-785 Introduction to Deep Learning lecture videos
# Primary: Fall 2024 (complete, finished semester). Also Spring 2024 as backup.
DENO_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/DenoLand.Deno_Microsoft.Winget.Source_8wekyb3d8bbwe"
export PATH="$DENO_DIR:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"
COOKIES="/d/George/ICT/Paper/yt-cookies.txt"
cd /d/George/ICT/Paper/CMU-11785-DeepLearning/videos || exit 1

DL_PLAYLIST() {
  local label="$1"
  local url="$2"
  echo "=== Downloading: $label ==="
  mkdir -p "$label"
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
    --output "${label}/%(playlist_index)02d - %(title)s.%(ext)s" \
    --download-archive "download_archive_${label}.txt" \
    --no-overwrites --continue \
    --ignore-errors --retries 10 --fragment-retries 10 \
    "$url" 2>&1
}

# Fall 2024 (complete finished semester)
DL_PLAYLIST "fall2024" "https://www.youtube.com/playlist?list=PLp-0K3kfddPwpm8SuB262r4owIkS7NNJj"

echo "=== CMU 11-785 ALL DONE ==="