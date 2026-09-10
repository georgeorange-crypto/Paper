$ErrorActionPreference = "Continue"
$root = "C:\Users\chenzicong\Downloads\EmbodiedAI-Papers"
$log  = "$root\download.log"
$browser = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if (-not (Test-Path $browser)) { $browser = "C:\Program Files\Microsoft\Edge\Application\msedge.exe" }

# 去掉 OpenAI/Codex 的坏 PATH (WinError 448)
$env:PATH = ($env:PATH -split ';' | Where-Object { $_ -notmatch 'OpenAI' -and $_ -notmatch 'Codex' }) -join ';'

function Log($m) { "$(Get-Date -Format 'HH:mm:ss')  $m" | Tee-Object -FilePath $log -Append }

function Get-Arxiv($id, $name, $dir) {
  $out = "$dir\$id`_$name.pdf"
  if (Test-Path $out) {
    $b = [System.IO.File]::ReadAllBytes($out)
    if (([System.Text.Encoding]::ASCII.GetString($b[0..3]) -eq "%PDF") -and $b.Length -gt 20000) { Log "  SKIP $id ($name)"; return $true }
  }
  try {
    Invoke-WebRequest -Uri "https://arxiv.org/pdf/$id" -OutFile $out -TimeoutSec 120 -UseBasicParsing -Headers @{ "User-Agent"="Mozilla/5.0" }
    $bytes = [System.IO.File]::ReadAllBytes($out)
    if (([System.Text.Encoding]::ASCII.GetString($bytes[0..3]) -eq "%PDF") -and $bytes.Length -gt 20000) {
      Log "  OK   $id  $([math]::Round($bytes.Length/1KB,0)) KB  $name"; return $true
    } else { Log "  BAD  $id  非PDF/过小 — $name"; if (Test-Path $out) { Remove-Item $out -Force }; return $false }
  } catch { Log "  ERR  $id  $($_.Exception.Message) — $name"; return $false }
}

function Get-Blog($url, $name, $dir) {
  $out = "$dir\$name.pdf"
  if (Test-Path $out) {
    $b = [System.IO.File]::ReadAllBytes($out)
    if (([System.Text.Encoding]::ASCII.GetString($b[0..3]) -eq "%PDF") -and $b.Length -gt 5000) { Log "  SKIP $name"; return $true }
  }
  try {
    Start-Process -FilePath $browser -ArgumentList @("--headless=new","--disable-gpu","--no-pdf-header-footer","--virtual-time-budget=8000","--print-to-pdf=$out",$url) -Wait -WindowStyle Hidden
    Start-Sleep -Milliseconds 1500
    if (Test-Path $out) {
      $bytes = [System.IO.File]::ReadAllBytes($out)
      if (([System.Text.Encoding]::ASCII.GetString($bytes[0..3]) -eq "%PDF") -and $bytes.Length -gt 5000) {
        Log "  OK   $([math]::Round($bytes.Length/1KB,0)) KB  $name"; return $true
      } else { Log "  BAD  过小/非PDF — $name ($url)"; return $false }
    } else { Log "  ERR  未生成 — $name ($url)"; return $false }
  } catch { Log "  ERR  $($_.Exception.Message) — $name"; return $false }
}

"===== 具身智能论文下载开始 $(Get-Date) =====" | Set-Content $log

# ============ NVIDIA (24 arxiv + 1 blog) ============
Log "[NVIDIA] arxiv 论文..."
$d = "$root\NVIDIA"
$nv = @(
 "2503.14734`tIsaac_GR00T_N1","2310.12931`tEureka","2406.01967`tDrEureka","2310.17596`tMimicGen",
 "2410.24185`tDexMimicGen","2210.03094`tVIMA","2108.10470`tIsaac_Gym","2511.04831`tIsaac_Lab",
 "2410.21229`tHOVER","2406.08858`tOmniH2O","2403.04436`tH2O","2205.01906`tASE",
 "2409.14393`tMaskedMimic","2505.12705`tDreamGen","2302.06692`tELLM","2206.08853`tMineDojo",
 "2305.16291`tVoyager","2312.08344`tFoundationPose","2210.13702`tDeXtreme","2305.12127`tDexPBT",
 "2407.02274`tDextrAH-G","2412.01791`tDextrAH-RGB","2306.14896`tRVT","2406.08545`tRVT-2"
)
foreach ($p in $nv) { $id,$n = $p -split "`t"; Get-Arxiv $id $n $d | Out-Null; Start-Sleep -Milliseconds 500 }
Get-Blog "https://research.nvidia.com/labs/gear/gr00t-n1_5/" "BLOG_GR00T_N1.5" $d | Out-Null

# ============ Meta (32 arxiv) ============
Log "[Meta] arxiv 论文..."
$d = "$root\Meta"
$meta = @(
 "1904.01201`tHabitat","2106.14405`tHabitat_2.0","2310.13724`tHabitat_3.0","2109.08238`tHM3D",
 "2306.11290`tHSSD-200","2110.07058`tEgo4D","2311.18259`tEgo-Exo4D","2308.13561`tProject_Aria",
 "1911.00357`tDD-PPO","2204.03514`tHabitat-Web","2301.07302`tPIRLNav","2306.07552`tGalactic",
 "2303.18240`tVC-1_CortexBench","2203.12601`tR3M","2203.06173`tMVP_Masked_Visual_Pretraining",
 "2210.03109`tReal-World_Robot_Learning_MVP","2404.08471`tV-JEPA","2506.09985`tV-JEPA_2",
 "2407.20179`tTheia","2304.07193`tDINOv2","2005.14679`tDIGIT","2111.00071`tReSkin",
 "2210.14210`tMidasTouch","2410.24090`tSparsh","2411.02479`tDigit_360","2101.10384`tdroidlet",
 "2304.00410`tASC_Adaptive_Skill_Coordination","2306.11565`tHomeRobot","2311.06430`tGOAT",
 "2411.00081`tPARTNR","2502.04307`tDexterityGen","2504.14151`tLocate_3D"
)
foreach ($p in $meta) { $id,$n = $p -split "`t"; Get-Arxiv $id $n $d | Out-Null; Start-Sleep -Milliseconds 500 }
Get-Blog "https://open-eqa.github.io/" "BLOG_OpenEQA_project_page" $d | Out-Null

# ============ Physical Intelligence (7 arxiv + 7 blog) ============
Log "[Physical Intelligence] arxiv 论文..."
$d = "$root\Physical_Intelligence"
$pi = @(
 "2410.24164`tpi0_VLA_Flow_Model","2501.09747`tFAST_Action_Tokenization","2502.19417`tHi_Robot",
 "2504.16054`tpi0.5_Open-World_Generalization","2505.23705`tKnowledge_Insulating_VLA",
 "2506.07339`tReal-Time_Chunking","2511.14759`tpi_star_0.6_RECAP"
)
foreach ($p in $pi) { $id,$n = $p -split "`t"; Get-Arxiv $id $n $d | Out-Null; Start-Sleep -Milliseconds 500 }
Log "[Physical Intelligence] 博客/技术报告..."
$piblog = @(
 "https://www.pi.website/research/human_to_robot`tBLOG_Human_to_Robot_Transfer",
 "https://www.pi.website/blog/olympics`tBLOG_Moravecs_Paradox_Robot_Olympics",
 "https://www.pi.website/blog/partner`tBLOG_The_Physical_Intelligence_Layer",
 "https://www.pi.website/research/memory`tBLOG_VLAs_Long_and_Short-Term_Memory",
 "https://www.pi.website/research/rlt`tBLOG_Precise_Manipulation_Online_RL",
 "https://www.pi.website/blog/pi07`tBLOG_pi0.7_Steerable_Model",
 "https://www.pi.website/blog/openpi`tBLOG_Open_Sourcing_pi0"
)
foreach ($b in $piblog) { $u,$n = $b -split "`t"; Get-Blog $u $n $d | Out-Null }

# ============ Boston Dynamics (6 arxiv + 9 blog) ============
Log "[Boston Dynamics] arxiv 论文 (RAI Institute)..."
$d = "$root\Boston_Dynamics"
$bd = @(
 "2504.03597`tReal-is-Sim","2506.17184`tJudo_Sampling-Based_MPC","2510.08568`tNovaFlow",
 "2510.08754`tWhole_Body_MPC_Table_Tennis","2605.05172`tQ2RL_BC_to_Q-functions",
 "2605.20648`tPACTS_Predicates_and_Actions"
)
foreach ($p in $bd) { $id,$n = $p -split "`t"; Get-Arxiv $id $n $d | Out-Null; Start-Sleep -Milliseconds 500 }
Log "[Boston Dynamics] 博客..."
$bdblog = @(
 "https://bostondynamics.com/blog/electric-new-era-for-atlas/`tBLOG_Atlas_Goes_Electric",
 "https://bostondynamics.com/blog/training-a-humanoid-robot-for-hard-work/`tBLOG_Training_Humanoid_for_Hard_Work",
 "https://bostondynamics.com/blog/can-football-teach-a-robot-to-move/`tBLOG_Can_Football_Teach_a_Robot",
 "https://bostondynamics.com/blog/atlas-evolution-from-research-robot-to-industrial-humanoid/`tBLOG_Atlas_Evolution",
 "https://bostondynamics.com/blog/tools-for-your-to-do-list-with-spot-and-gemini-robotics/`tBLOG_Spot_and_Gemini_Robotics",
 "https://bostondynamics.com/blog/aivi-learning-now-powered-google-gemini-robotics/`tBLOG_AIVI-Learning_Gemini_Robotics",
 "https://www.tri.global/news/boston-dynamics-and-toyota-research-institute-announce-partnership-advance-robotics-research`tBLOG_BD_TRI_Partnership",
 "https://www.tri.global/news/ai-powered-robot-boston-dynamics-and-toyota-research-institute-takes-key-step-towards-general`tBLOG_BD_TRI_Key_Step_LBM",
 "https://www.tri.global/news/robot-only-needs-single-ai-model-master-humanlike-movements`tBLOG_Single_AI_Model_Humanlike"
)
foreach ($b in $bdblog) { $u,$n = $b -split "`t"; Get-Blog $u $n $d | Out-Null }

# ============ Amazon (7 arxiv + 1 external arxiv + 8 blog) ============
Log "[Amazon] arxiv 论文..."
$d = "$root\Amazon"
$az = @(
 "2303.16382`tARMBench","2305.10272`tLarge-Scale_Package_Manipulation","2309.13224`tPick_Planning_Strategies",
 "2506.09765`tLearning_to_Optimize_Package_Picking","2505.04572`tStow_Vulcan_Fabric_Pods",
 "2503.09755`tDist_Robust_MARL_Chute_Mapping","2508.08574`tDeepFleet",
 "1710.01330`tMIT-Princeton_Multi-Affordance_Grasping_EXTERNAL"
)
foreach ($p in $az) { $id,$n = $p -split "`t"; Get-Arxiv $id $n $d | Out-Null; Start-Sleep -Milliseconds 500 }
Log "[Amazon] 博客/官方页面..."
$azblog = @(
 "https://www.amazon.science/publications/gam-generalized-action-model-for-robotic-manipulation`tBLOG_GAM_Generalized_Action_Model",
 "https://www.aboutamazon.com/news/operations/amazon-introduces-sparrow-a-state-of-the-art-robot-that-handles-millions-of-diverse-products`tBLOG_Sparrow",
 "https://www.aboutamazon.com/news/operations/amazon-introduces-new-robotics-solutions`tBLOG_Sequoia_and_Digit",
 "https://www.aboutamazon.com/news/operations/amazon-vulcan-robot-pick-stow-touch`tBLOG_Vulcan_Robot_Touch",
 "https://www.aboutamazon.com/news/operations/amazon-delivering-future-2025-online-shopping-speed-delivery`tBLOG_Blue_Jay_and_Project_Eluna",
 "https://www.aboutamazon.com/news/operations/amazon-proteus-robot-europe-investment-employee-support`tBLOG_Proteus_Next-Gen"
)
foreach ($b in $azblog) { $u,$n = $b -split "`t"; Get-Blog $u $n $d | Out-Null }

# ============ Figure (9 剩余 blog) ============
Log "[Figure] 博客..."
$d = "$root\Figure"
$fig = @(
 "https://www.figure.ai/news/helix-logistics`tBLOG_Helix_Accelerating_Logistics",
 "https://www.figure.ai/news/botq`tBLOG_BotQ_Manufacturing_Facility",
 "https://www.figure.ai/news/reinforcement-learning-walking`tBLOG_Natural_Humanoid_Walk_RL",
 "https://www.figure.ai/news/scaling-helix-logistics`tBLOG_Scaling_Helix_Logistics",
 "https://www.figure.ai/news/helix-learns-to-fold-laundry`tBLOG_Helix_Learns_to_Fold_Laundry",
 "https://www.figure.ai/news/helix-loads-the-dishwasher`tBLOG_Helix_Loads_the_Dishwasher",
 "https://www.figure.ai/news/project-go-big`tBLOG_Project_Go-Big",
 "https://www.figure.ai/news/introducing-figure-03`tBLOG_Introducing_Figure_03",
 "https://www.figure.ai/news/helix-02`tBLOG_Helix_02_Full-Body_Autonomy"
)
foreach ($b in $fig) { $u,$n = $b -split "`t"; Get-Blog $u $n $d | Out-Null }

# ============ Tesla (官方页面, 无论文) ============
Log "[Tesla] 官方页面 (可能被 403 拦截)..."
$d = "$root\Tesla"
$tsblog = @(
 "https://www.tesla.com/AI`tPAGE_Tesla_AI",
 "https://www.tesla.com/optimus`tPAGE_Tesla_Optimus"
)
foreach ($b in $tsblog) { $u,$n = $b -split "`t"; Get-Blog $u $n $d | Out-Null }

Log "===== 全部下载任务结束 $(Get-Date) ====="
