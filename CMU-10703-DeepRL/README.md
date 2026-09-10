# CMU 10-703：深度强化学习 (Deep Reinforcement Learning)

- **课程名称**：10-703 Deep Reinforcement Learning（与本科版 10-403 合开、共用讲义与网站）
- **开课院校**：卡内基梅隆大学 (Carnegie Mellon University, CMU)
- **授课教师**：Katerina Fragkiadaki、Aviral Kumar
- **学期版本**：Fall 2026（当前进行中）+ 站点公开的完整往期讲义
- **官方主页**：https://cmudeeprl.github.io/ （10-403/10-703 合开站点）
- **课程讲义页**：https://cmudeeprl.github.io/lectures/
- **当前 F26 站点源（含最新讲义链接）**：https://github.com/cmudeeprl/703website_f26
- **作业提交**：Gradescope（course 950908，需登录）；讨论：Piazza（class m5v6dm0n26o3ai）
- **教材**：Sutton & Barto《RL: An Introduction》(http://incompleteideas.net/book/RLbook2018.pdf)；Goodfellow 等《Deep Learning》(https://www.deeplearningbook.org/)
- **YouTube 播放列表**：CMU 官方发布有往期课程录像（搜索 "CMU 10-403 Deep RL"）。**按任务要求本仓库不下载视频。**

## 关于 10-703 与 10-403

CMU 的深度强化学习研究生课(10-703)与本科课(10-403)长期**合开、共用同一站点 cmudeeprl.github.io 与同一套讲义幻灯片**。因此本目录同时收录：
1. **Fall 2026 当前 10-703**（`F26_` 前缀，来自 703website_f26，Google Drive 托管，可靠下载）；
2. **站点公开的完整 Deep RL 讲义**（无前缀，来自 cmudeeprl.github.io/lectures，S25/F25 版）。

## 目录结构

- `slides/`：讲义幻灯片
- `recitations/`：习题课(recitation)幻灯片
- 无 `assignments/`、`exams/`：作业(HW1–HW5)与测验(quiz)通过 Gradescope 分发/提交，**需登录，属受限内容**；`homework` 页仅含 Piazza 链接。

## 已下载清单（slides/）

**Fall 2026 当前学期（Google Drive，稳定获取）：**

| 讲次 | 主题 | 文件 |
|---|---|---|
| L01 | Welcome & Intro to Class | F26_L01_Intro_to_Class.pdf |
| L02 | Introduction to RL | F26_L02_Intro_to_RL.pdf |
| L03 | Policy Gradient Methods | F26_L03_PolicyGradient.pdf |
| L04 | Actor-Critic / Evolutionary | F26_L04_ActorCritic_Evolutionary.pdf |
| L06 | Value-based Methods | F26_L06_ValueBased.pdf |
| L07 | Value-based Methods (cont.) | F26_L07_ValueBased_cont.pdf |
| L08 | Advanced Policy Gradient | F26_L08_AdvancedPolicyGradient.pdf |
| L09 | Off-Policy AC & Max-Ent RL | F26_L09_OffPolicyAC_MaxEntRL.pdf |
| L18 | Offline RL | F26_L18_OfflineRL.pdf |

*（Fall 2026 学期进行中，L10 及之后多数讲义尚未发布/仍为占位链接。）*

**往期完整讲义（cmudeeprl.github.io/lectures）：**

| 主题 | 文件 | 来源 |
|---|---|---|
| Introduction to RL | L01_Introduction.pdf | Piazza |
| Behavior Cloning / GAIL | L11_ImitationLearning.pdf | Dropbox |
| Evolutionary Methods | L13_EvolutionaryMethods.pdf | Dropbox |
| Sim2Real | L25_Sim2Real.pdf（约 128 MB，内嵌大量演示素材） | Dropbox |

## 已下载清单（recitations/）

| 习题课 | 文件 |
|---|---|
| R02 | F26_R02_MDPs_PG_HW1.pdf |
| R04 | F26_R04_recitation.pdf |
| R08 (HW4) | R08_HW4.pdf |

## 统计与缺失说明

- **已成功下载**：slides/ 13 份 + recitations/ 3 份
- **缺失/受限**：
  - **作业与测验**：HW1–HW5、Quiz 均在 **Gradescope（需登录）**，无公开 PDF。
  - **部分往期 Dropbox 讲义因网络原因未能下载**（本机到 `dropboxusercontent.com` CDN 连接极不稳定，多次重试仍失败）。这些讲义官方链接如下，可在网络良好时手动下载：
    - Multi-armed Bandits：https://www.dropbox.com/scl/fi/33kxypxanqfztjdl905sl/banditsexploreS25.pdf?rlkey=7u8i6l8dgeq24j2yi6eotiyrx&dl=1
    - Value-based Methods / DQN：https://www.dropbox.com/scl/fi/edkalvhjr4qpgwi0z1vfo/ValueBasedMethodsS25.pdf?rlkey=rf76c2kpoa09rv68tvg6n1t7f&dl=1
    - MCTS：https://www.dropbox.com/scl/fi/2jg8myrm11rj0bz040jwa/MCTS_S25.pdf?rlkey=idhbx9w5hwpfogagp3uhupuo7&dl=1
    - Actor-Critic：https://www.dropbox.com/scl/fi/ykuvfne5htbw0s7dtqkfg/PG_S25.pdf?rlkey=70fu812b37bs451swlc7tevsn&dl=1
    - Diffusion Policies：https://www.dropbox.com/scl/fi/0m457u4lquyaxi9ss51lc/Diffusion_policiesS25.pdf?rlkey=cm0754yaqnv541uk5lovcensu&dl=1
    - AlphaGo/AlphaZero：https://www.dropbox.com/scl/fi/oqjq7ps1ftqgy9c58kxhv/MBRL_AlphaZero_F25.pdf?rlkey=gpfyw3iku8j529546f9xa5em1&dl=1
    - MBRL from Sensory Input：https://www.dropbox.com/scl/fi/du17crudv9ujgppge9kux/MBRLRL_sensoryF25.pdf?rlkey=kp0fn057ev84dm875wozlefg2&dl=1
    - Visual Imitation：https://www.dropbox.com/scl/fi/7kbgmytk03je5ma1wen92/VisualImitationF25.pdf?rlkey=6qdwfrmg5j3tqge6l9uhp4gmp&dl=1
    - Multigoal RL：https://www.dropbox.com/scl/fi/fijwb9k9k7d1gaxzcq8nr/multigoal_S25.pdf?rlkey=b2tgf4fv51gp60qm6dcte4zjj&dl=1
    - Multimodal MBRL：https://www.dropbox.com/scl/fi/qt3m9cq3isx82j01ibns7/MultimodalMBRLGenModelsS25.pdf?rlkey=plisjw7gdr93vrhh4amsvidg7&dl=1
  - 另有若干往期讲义(Trust Region、Max-Ent RL、MBRL Intro、Offline RL、Exploration、Foundation Models 等)托管在 **需 Google 登录** 的受限 Google Drive，无法公开抓取。
