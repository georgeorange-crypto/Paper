$ytdlp  = "C:\Users\chenzicong\Downloads\yt-dlp.exe"
$ffmpeg = "C:\Users\chenzicong\Downloads\ffmpeg\ffmpeg-master-latest-win64-gpl\bin"
$dest   = "C:\Users\chenzicong\Downloads\CS285-Spring2026\videos\spring2026"
$log    = "C:\Users\chenzicong\Downloads\CS285-Spring2026\videos\spring2026_download.log"

# Remove broken OpenAI Codex path that causes WinError 448 during PATH traversal
$env:PATH = ($env:PATH -split ';' | Where-Object { $_ -notmatch 'OpenAI' -and $_ -notmatch 'Codex' }) -join ';'

New-Item -ItemType Directory -Force -Path $dest | Out-Null
"[$(Get-Date)] Starting Spring 2026 download (27 videos)..." | Tee-Object -FilePath $log

& $ytdlp --ffmpeg-location $ffmpeg `
  -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" `
  --merge-output-format mp4 `
  -o "$dest\%(playlist_index)02d - %(title)s.%(ext)s" `
  --download-archive "$dest\downloaded.txt" `
  --no-overwrites `
  --continue `
  --retries 10 `
  --fragment-retries 10 `
  --no-mtime `
  "https://www.youtube.com/playlist?list=PLKq1TCpsv3Y4" 2>&1 | Tee-Object -FilePath $log -Append

"[$(Get-Date)] Spring 2026 download finished. Exit code: $LASTEXITCODE" | Tee-Object -FilePath $log -Append
