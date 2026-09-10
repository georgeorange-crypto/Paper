#!/bin/bash
# Download MIT 6.7910 (9.520) Statistical Learning Theory lecture videos
# Available: MITCBMM channel 2017-2019 seasons
export PATH="/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"
cd /d/George/ICT/Paper/MIT-6.7910-StatLearning/videos || exit 1

DL_PLAYLIST() {
  local label="$1"
  local url="$2"
  echo "=== Downloading: $label ==="
  mkdir -p "$label"
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
    --output "${label}/%(playlist_index)02d - %(title)s.%(ext)s" \
    --download-archive "download_archive_${label}.txt" \
    --no-overwrites --continue \
    --ignore-errors --retries 10 --fragment-retries 10 \
    "$url" 2>&1
}

# MITCBMM channel playlists for 9.520/6.860 Statistical Learning Theory
# 2019 season
DL_PLAYLIST "2019" "https://www.youtube.com/playlist?list=PLyGKBDfnk-iB4Xz_EAJNEgGF5I-6OzRNI"
# 2018 season
DL_PLAYLIST "2018" "https://www.youtube.com/playlist?list=PLyGKBDfnk-iAtLO6oLW4swMiQGz4f2OPY"
# 2017 season
DL_PLAYLIST "2017" "https://www.youtube.com/playlist?list=PLyGKBDfnk-iAQx4Kw9JeVqspbg77sfAK0"

echo "=== MIT 6.7910 videos ALL DONE ==="
