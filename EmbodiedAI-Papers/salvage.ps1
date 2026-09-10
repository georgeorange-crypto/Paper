$root = "C:\Users\chenzicong\Downloads\EmbodiedAI-Papers"
$browser = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if (-not (Test-Path $browser)) { $browser = "C:\Program Files\Microsoft\Edge\Application\msedge.exe" }
$UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36"

function Try-Save($url, $out, $hardTimeoutSec) {
  if (Test-Path $out) { Remove-Item $out -Force -ErrorAction SilentlyContinue }
  $args = @(
    "--headless=new","--disable-gpu","--no-pdf-header-footer",
    "--user-agent=$UA",
    "--virtual-time-budget=20000",
    "--run-all-compositor-stages-before-draw",
    "--print-to-pdf=$out", $url
  )
  $p = Start-Process -FilePath $browser -ArgumentList $args -WindowStyle Hidden -PassThru
  $waited = 0
  while (-not $p.HasExited -and $waited -lt $hardTimeoutSec) { Start-Sleep -Seconds 1; $waited++ }
  if (-not $p.HasExited) { Write-Host "  TIMEOUT kill $url"; try { $p.Kill() } catch {}; Start-Sleep -Seconds 2 }
  Start-Sleep -Milliseconds 1500
  if (Test-Path $out) {
    $b = [System.IO.File]::ReadAllBytes($out)
    $hdr = if ($b.Length -ge 4) { [System.Text.Encoding]::ASCII.GetString($b[0..3]) } else { "" }
    # check for Access Denied title in first 2KB
    $head = [System.Text.Encoding]::ASCII.GetString($b[0..([math]::Min(2047,$b.Length-1))])
    $denied = $head -match "Access Denied"
    $kb = [math]::Round($b.Length/1KB,0)
    if ($hdr -eq "%PDF" -and -not $denied -and $b.Length -gt 20000) {
      Write-Host "  OK   $kb KB  $out"; return $true
    } else {
      $why = if ($denied) { "Access Denied" } elseif ($hdr -ne "%PDF") { "non-PDF" } else { "too small ($kb KB)" }
      Write-Host "  FAIL $why  $url"; return $false
    }
  } else { Write-Host "  FAIL not-generated  $url"; return $false }
}

Write-Host "=== Salvage retry: Tesla x2 + Figure x1 ==="
Try-Save "https://www.tesla.com/AI"       "$root\Tesla\PAGE_Tesla_AI.pdf"       40 | Out-Null
Try-Save "https://www.tesla.com/optimus"  "$root\Tesla\PAGE_Tesla_Optimus.pdf"  40 | Out-Null
Try-Save "https://www.figure.ai/news/helix-logistics" "$root\Figure\BLOG_Helix_Accelerating_Logistics.pdf" 45 | Out-Null
Write-Host "=== done ==="
