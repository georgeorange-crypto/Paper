#!/bin/bash
# CS336 Spring 2026 - Batch video downloader
# 1080p, English + Chinese(auto) subtitles, resumable

# Clean PATH to avoid Windows invalid-dir WinError
export PATH="/c/Users/chenzicong/AppData/Local/Programs/Python/Python312:/c/Users/chenzicong/AppData/Local/Programs/Python/Python312/Scripts:/usr/bin:/bin"

# ffmpeg location
FFMPEG_DIR="/c/Users/chenzicong/AppData/Local/Microsoft/WinGet/Packages/Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe/ffmpeg-9.0-full_build/bin"

PLAYLIST="https://www.youtube.com/playlist?list=PLoROMvodv4rMqXOcazWaTUHhq-yembLCV"
OUTDIR="/d/George/ICT/Paper/CS336-Spring2026/videos"

cd "$OUTDIR" || exit 1

yt-dlp \
  --ffmpeg-location "$FFMPEG_DIR" \
  -f "bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=1080]+bestaudio/best[height<=1080]" \
  --merge-output-format mp4 \
  --write-subs --write-auto-subs \
  --sub-langs "en,en-US,zh-Hans,zh-Hant" \
  --sub-format "srt/vtt/best" \
  --convert-subs srt \
  --embed-subs \
  --write-thumbnail \
  --write-description \
  --write-info-json \
  --output "%(playlist_index)02d - %(title)s.%(ext)s" \
  --download-archive "download_archive.txt" \
  --no-overwrites \
  --continue \
  --ignore-errors \
  --retries 10 \
  --fragment-retries 10 \
  "$PLAYLIST" 2>&1
