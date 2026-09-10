$root = "C:\Users\chenzicong\Downloads\EmbodiedAI-Papers"
$OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$companies = [ordered]@{
  "Physical_Intelligence" = 14
  "Figure"                = 10
  "NVIDIA"                = 25
  "Google_DeepMind"       = 32
  "Meta"                  = 33
  "Tesla"                 = 2
  "Boston_Dynamics"       = 15
  "Amazon"                = 14
  "Skild"                 = 17
}

$grandOK = 0; $grandBad = 0; $grandExpected = 0
$badList = @()

foreach ($c in $companies.Keys) {
  $dir = "$root\$c"
  $expected = $companies[$c]
  $grandExpected += $expected
  $files = @(Get-ChildItem -Path $dir -Filter *.pdf -File -ErrorAction SilentlyContinue)
  $okCount = 0; $badCount = 0
  foreach ($f in $files) {
    $bytes = [System.IO.File]::ReadAllBytes($f.FullName)
    $isPdf = $false
    if ($bytes.Length -ge 4) {
      $hdr = [System.Text.Encoding]::ASCII.GetString($bytes[0..3])
      if ($hdr -eq "%PDF") { $isPdf = $true }
    }
    $kb = [math]::Round($bytes.Length/1KB, 0)
    # thresholds: papers >20KB, blogs >5KB; treat <5KB or non-pdf as bad; flag 5-20KB blogs as suspicious separately
    if ($isPdf -and $bytes.Length -gt 5000) {
      $okCount++
      # flag suspiciously tiny (likely error page rendered to pdf)
      if ($bytes.Length -lt 20000) {
        $badList += [PSCustomObject]@{ Company=$c; File=$f.Name; KB=$kb; Status="SUSPECT(tiny)" }
      }
    } else {
      $badCount++
      $status = if (-not $isPdf) { "NOT-PDF" } else { "TOO-SMALL" }
      $badList += [PSCustomObject]@{ Company=$c; File=$f.Name; KB=$kb; Status=$status }
    }
  }
  $grandOK += $okCount; $grandBad += $badCount
  $mark = if ($files.Count -eq $expected -and $badCount -eq 0) { "OK " } else { "!! " }
  "{0}{1,-24} files={2,-3} expected={3,-3} valid={4,-3} bad={5}" -f $mark, $c, $files.Count, $expected, $okCount, $badCount
}

""
"===== TOTAL: files_valid=$grandOK  bad=$grandBad  expected_total=$grandExpected ====="
""
if ($badList.Count -gt 0) {
  "----- FLAGGED FILES (bad or suspiciously tiny) -----"
  $badList | Format-Table -AutoSize | Out-String -Width 200
}
