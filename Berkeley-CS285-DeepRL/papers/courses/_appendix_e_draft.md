<!-- APPENDIX E DRAFT — merge into README.md after download run finishes; finalize the OK/FAIL counts in §E.0 and the summary table from dl_courses.log -->

## 附录 E：全球知名强化学习课程配套材料（存于 `courses/`）

本附录记录在 CS285 之外、全球范围内其他知名强化学习课程的**配套讲义、课件与阅读材料**。所有可下载项均来自**授课教授主页或课程官方站点**（合法、免费、全文 PDF），逐一经过 HTTP 200 探测与 `%PDF`+`EOF` 完整性校验；下载脚本与 CS285 论文库同源（`courses/dl_courses.sh`，读取各 `courses_manifest*.tsv`，串行下载、幂等跳过、4 次断点续传）。

### E.0 总览

- **已下载课程：24 门，共 417 个文件**（Stanford 批 52 + 加拿大/英欧/亚洲批 141 + 美国批 224），分 24 个子目录存于 `courses/`。
- **仅存链接的资源**：各大工业框架与部分课程（源码/在线文档为主，见 §E.4）。
- **登录墙 / 无公开材料**：部分课程仅对注册学生开放（Canvas/Moodle/Google 登录）或仅有视频，已如实记录（见 §E.5），不做抓取。

| 子目录 | 课程 | 学校 / 讲师 | 文件数 | CS285 对应 |
|---|---|---|---|---|
| `stanford_cs234` | CS234 Reinforcement Learning (Winter 2026) | Stanford / Emma Brunskill | 29 | 全程基础 + 理论 |
| `stanford_cs224r` | CS224R Deep RL (Spring 2026) | Stanford / Chelsea Finn | 23 | 与 CS285 高度重合 |
| `alberta_rlcourse` | RL 课程（Coursera RL 专项配套） | U Alberta / Martha White | 19 | lec-4~7 基础 |
| `waterloo_cs885` | CS885 Reinforcement Learning (Spring 2018) | U Waterloo / Pascal Poupart | 41 | 全程，含深度 RL |
| `toronto_introrl` | Introduction to RL (Fall 2025) | U Toronto / Amir-massoud Farahmand | 16 | lec-4~8 + 理论 |
| `ubc_cpsc533v` | CPSC533V Learning to Move (2024W1) | UBC / Michiel van de Panne | 9 | lec-5~10 连续控制 |
| `umass_cmpsci687` | CMPSCI687 RL (Fall 2024) 合订讲义 | UMass / Bruno da Silva | 2 | 全程理论参考 |
| `ucl_david_silver` | RL 经典 10 讲 + Easy21 + 考题 | UCL / David Silver | 13 | lec-4~7 基础必看 |
| `edinburgh_rl` | INFR11010 RL (2025) | Edinburgh / Stefano Albrecht | 15 | 全程 + MARL |
| `deepmind_ucl_2021` | DeepMind×UCL RL 系列 2021（部分） | DeepMind / Hado van Hasselt 等 | 4 | lec-1/7/13 补充 |
| `upenn_ese6500` | ESE6500 Learning in Robotics (S25) 合订讲义 | UPenn / Pratik Chaudhari | 1 | lec-11~13 控制即推断 |
| `nus_cs6101` | CS6101 Deep RL 读书会 (2018/19) | NUS | 10 | 论文导读 |
| `cuhk_ierg5350` | IERG5350 RL（含 AlphaStar） | CUHK / Bolei Zhou 周博磊 | 11 | 全程中文友好 |
| `ucsd_cse190` | CSE190 Deep RL / LLM Agents (Spring 2026) | UCSD / Prithviraj Ammanabrolu | 16 | lec-14 + RL×LLM 前沿 |
| `wisconsin_cs839` | CS839 Advanced Deep RL (Fall 2025) | UW–Madison / Josiah Hanna | 43 | 全程进阶 + 前沿 |
| `harvard_stat184` | Stat184/CS1840 Intro to RL (Fall 2023) | Harvard / Sham Kakade | 46 | lec-4~10 + 理论 |
| `harvard_cs2824` | CS2824 Foundations of RL (Spring 2026) | Harvard / Kakade & Janson | 26 | lec-20 理论 |
| `caltech_cs159` | CS159 Advanced Topics in ML/RL | Caltech / Yisong Yue | 20 | lec-11~16 控制/模型 |
| `mit_6_7920` | 6.7920 RL: Foundations & Methods (Fall 2025) | MIT | 1（部分）| lec-20 理论导论 |
| `uiuc_cs443` | CS443 Deep RL (Spring 2023) | UIUC / Nan Jiang | 13 | lec-5~10 基础 |
| `uiuc_cs542` | CS542 Statistical RL / RL 理论 (Fall 2022) | UIUC / Nan Jiang | 13 | lec-20 理论 |
| `utexas_cs394r` | CS394R RL: Theory & Practice (Spring 2024) | UT Austin / Peter Stone | 17 | Sutton-Barto 逐章 |
| `uw_cse542` | CSE542 Deep RL (Spring 2024) | UW Seattle / Abhishek Gupta | 14 | 与 CS285 高度重合 |
| `uw_cse579` | CSE579 Intelligent Control (Autumn 2024) | UW Seattle / Abhishek Gupta | 15 | lec-5~14 控制 |

### E.1 美国高校

- **Stanford CS234 / CS224R**：两门旗舰课。CS234（Brunskill）偏理论与基础，含伦理与 Shane Gu 客座；CS224R（Finn）是与 CS285 最接近的深度 RL 课，slides 覆盖模仿学习→策略梯度→Actor-Critic→Q-learning→离线 RL→RLHF→RL for LLM 推理→基于模型→多任务/元/分层→sim2real→VLA，另含 3 份作业与项目指南。**推荐作为 CS285 的首选平行参照。**
- **UC Berkeley（CS285 本体）**：见附录 C；Deep RL Bootcamp 与 CS294 早期版仅有视频，归入 §E.5。
- **UW–Madison CS839（Hanna）**：43 个文件，是本批最完整的进阶课之一；课程中途重排了讲次，故存在两套并行编号（如 `lec12-on-policy-fa` 与 `lec12b-fa-I`），均为不同内容，全部保留。覆盖 bandits→MDP→DP→MC/TD→模型→函数逼近→深度 RL→策略梯度→分层→MARL→评测→RL4LLMs→离线→真实世界。
- **Harvard Stat184/CS1840（Kakade）**：46 个文件，每讲有 `prelecture`（课前）与 `annotated`（课堂批注）两版；理论味浓（bandits、UCBVI、fitted DP、MCTS、策略梯度理论），另附 RL 理论书 `rltheorybook_AJKS.pdf`。**Harvard CS2824（Kakade & Janson, 2026）**是其理论续作，26 个文件，含 linUCB、linear MDP、Bellman rank、NPG、PG 全局收敛、RLHF 等，附最新版理论书 `rltheorybook_ABJKS.pdf`。
- **Caltech CS159（Yue）**：20 个文件，分 control（MDP/OCP/MPC/模型学习）与 learning 两部分，含 5 场客座讲座；对 CS285 的基于模型/控制章节是很好的控制论视角补充。
- **UCSD CSE190（Ammanabrolu, 2026）**：16 讲，主题为「Deep RL 与 LLM 智能体」，覆盖 agent 定义、仿真、经典控制、RL×语言、prompt 优化、神经符号工具调用、推理时扩展、多智能体、安全——是 CS285 lec-14（RL+序列模型/LLM）方向的前沿延伸。
- **UIUC CS443（Nan Jiang）**：Spring 2023 为最全 slide 版（13 讲，无第 3/4 讲）；**CS542** 为其统计 RL/理论课，8 份 typeset 讲义 + FQI/Bellman-rank/抽象/PSR slides。理论深度对标 lec-20。
- **UT Austin CS394R（Peter Stone）**：按 Sutton & Barto 教材逐章的 slides（Ch3–Ch13 + MCTS/生产版），17 个文件；其 resources 页另列有上百篇外部阅读论文，多数已收录于本库 `papers/`，故不重复下载。
- **UW Seattle CSE542 / CSE579（Abhishek Gupta）**：两门课高度互补，CSE542（2024 春，14 讲）偏深度 RL，CSE579（2024 秋，15 讲）偏「通过学习与优化的智能控制」；两者的策略梯度→Actor-Critic→基于模型→控制即推断→IRL→元/多任务/离线主线与 CS285 几乎一一对应。
- **MIT 6.7920（Fall 2025）**：官方仅公开第 1 讲导论 PDF，其余未公开，已如实标注为**部分**。
- **CMU 10-703（Fall 2025）**：课件全部托管于 Dropbox 与 Google Drive（签名下载域在本机网络被拦截），无法自动抓取，转入 §E.4 仅存链接。

### E.2 加拿大

- **U Alberta（Martha White）**：与 Coursera「强化学习专项」配套的课程 slides（17 讲 + 统计背景 + syllabus），是 Sutton & Barto 教材的官方讲授版，基础扎实。
- **U Waterloo CS885（Poupart, Spring 2018）**：41 个文件、最完整的一届，从 MDP、值/策略迭代到 DQN、策略梯度、Actor-Critic、信赖域、探索、逆 RL、多智能体、部分可观测全覆盖。
- **U Toronto IntroRL（Farahmand, Fall 2025）**：课程 reader（FRL）+ 7 讲 slides + 4 份作业 + 项目 + 3 份数学 tutorial（概率/线代/优化），自成完整教学包。
- **UBC CPSC533V（van de Panne）**：偏「学习运动控制」，9 份 notes/slides 覆盖 DQN/DDPG/TD3、策略梯度、MPC、RL 技巧与人形机器人。
- **UMass CMPSCI687（da Silva, Fall 2024）**：一份合订的完整课程讲义 + syllabus，理论参考价值高。
- **McGill/Mila COMP579、UdeM/Mila IFT6162**：无公开课件（登录墙），见 §E.5。

### E.3 英国 / 欧洲

- **UCL David Silver RL 经典 10 讲**：RL 入门最著名的公开课之一，10 讲 slides + Easy21 作业 + 历年考题与答案，共 13 个文件。**强烈推荐作为 CS285 前置**。
- **Edinburgh INFR11010（Albrecht, 2025）**：15 讲，含 bandits、MDP、MC/TD、规划、函数逼近、深度 RL、奖励、超越马尔可夫、MARL 与「搭建完整 RL 系统」实践讲。Albrecht 亦是 MARL 教科书作者。
- **DeepMind×UCL RL 系列 2021**：GCS 桶不可枚举，仅确认可下 4 讲（导论、MDP 与 DP、无模型控制、Deep RL 2）；完整版为公开 YouTube 播放列表（见 §E.4）。
- **UPenn ESE6500 Learning in Robotics（Chaudhari, S25）**：一份高质量合订讲义，机器人中的学习与估计视角，补充 CS285 的控制即推断章节。
- **Cambridge、Oxford、Imperial、EPFL、ETH Zürich、TUM**：均为登录墙或仅视频，见 §E.5。

### E.4 仅存链接的资源（源码 / 在线文档 / 视频，未下载 PDF）

以下为**框架文档与代码仓库**——其价值在于可运行代码与在线文档而非 PDF，故仅记录入口，建议 `git clone` 或在线阅读：

| 资源 | 入口 | 说明 |
|---|---|---|
| OpenAI Spinning Up | spinningup.openai.com · github.com/openai/spinningup | 最佳 Deep RL 入门文档 + 代码 |
| Hugging Face Deep RL Course | huggingface.co/learn/deep-rl-course | 免费实战课程 |
| HF TRL | github.com/huggingface/trl | RLHF/DPO/PPO 库 |
| PyTorch TorchRL | github.com/pytorch/rl | 官方 RL 库 |
| Stable-Baselines3 | github.com/DLR-RM/stable-baselines3 | 最常用基线实现 |
| CleanRL | github.com/vwxyzjn/cleanrl | 单文件算法实现 |
| Ray RLlib | docs.ray.io/en/latest/rllib | 工业级分布式 RL |
| Farama Gymnasium / PettingZoo | github.com/Farama-Foundation | 环境标准 |
| Tianshou | github.com/thu-ml/tianshou | 清华 RL 平台 |
| d3rlpy | github.com/takuseno/d3rlpy | 离线 RL 库 |
| verl / OpenRLHF | github.com/volcengine/verl · github.com/OpenRLHF/OpenRLHF | LLM RL 训练框架 |
| DeepMind Acme | github.com/google-deepmind/acme | 研究级 RL 框架 |
| NVIDIA Isaac Lab / NeMo RL | github.com/isaac-sim/IsaacLab | 机器人仿真 + RL |
| Unity ML-Agents | github.com/Unity-Technologies/ml-agents | 游戏引擎 RL |
| Meta Habitat | github.com/facebookresearch/habitat-lab | 具身智能仿真 |
| AWS DeepRacer | aws.amazon.com/deepracer | 自动驾驶小车 RL |
| Yandex/HSE Practical RL | github.com/yandexdataschool/Practical_RL | 实战课程仓库 |
| CMU 10-703 (F25) | cmudeeprl.github.io/703website_f25 | 课件在 Dropbox/Drive（本机网络受限）|
| DeepMind×UCL 2021 全集 | YouTube 播放列表 | 视频完整，PDF 仅部分 |
| 中文：Hands-on-RL / easy-rl | github.com/boyu-ai/Hands-on-RL · github.com/datawhalechina/easy-rl | 中文动手学 RL / 蘑菇书 |

### E.5 登录墙 / 无公开材料（已核实，不可抓取）

以下课程经探测确认**仅对注册学生开放（Canvas/Moodle/Google 登录）**、**返回 403**、**仅有视频**或**无公开课件**，如实记录以示完整：

- **美国**：Princeton COS435/ECE433（403）、UMich CSE598（登录）、Georgia Tech CS7642（仅 syllabus 公开）/ CS8803（登录）、Columbia ORCS E4529、UChicago MPCS53112、UCLA CS260R（无独立站点，其内容与周博磊 introRL 重合，已在 `cuhk_ierg5350` 收录）、UCSD CSE291（题为「AI Agents」，与 CSE190 重合）、Berkeley Deep RL Bootcamp（仅视频）。
- **NYU**：Deep Decision Making & RL / RL with Foundation Models —— 仅 2020 版 syllabus 与作业仓库公开，课件在 Canvas。
- **英欧**：Cambridge L171/R171、Oxford AIMS/Stats CDT、Imperial 70028、UCL COMP0089、EPFL EE-568、ETH Zürich Robot Learning / Real World Robotics、TUM（Intro Deep RL / Coding Lab / Agentic Markets）—— 登录墙或仅视频。
- **加拿大**：McGill/Mila COMP579、UdeM/Mila IFT6162 —— 登录墙。
- **亚洲**：NUS CS4246（登录）、NTU EE6231 / RL for Finance、HKU COMP3340、HKUST（COMP4212 / AIAA5025 / ARIN5204 / IOTA5201）、CUHK AIST4050、KAIST（CS.30707 / AI611）、U Tokyo GCL RL、中国「AI 101 计划」—— 无公开全文课件或仅登录可见。

---
