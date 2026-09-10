# 深度强化学习必读论文集 —— 选择说明文档

> 本文档配套 UC Berkeley **CS285 (Deep Reinforcement Learning, Sergey Levine) Spring 2026** 课程,系统整理了深度强化学习领域的必读论文。
> 每篇论文均给出：**标题、作者、年份、arXiv 链接、为什么必读、对应 CS285 讲次**。
>
> - **已下载 arXiv 论文：118 篇**，按 16 个主题分目录存放于 `papers/` 下，文件名格式为 `简称_标题_作者年份_arxivID.pdf`。
> - **无法从 arXiv 下载的奠基经典：另见文末附录 A**（发表于 arXiv 出现之前，或仅见于 Nature/Science/会议论文集，如 Sutton 策略梯度、Williams REINFORCE、Nature 版 DQN、AlphaGo 系列等）。合计选目 **130+ 篇**。
> - **经典教材免费全本：见附录 B**，5 本已下载存于 `books/`（Sutton & Barto、Szepesvári、Lattimore、Slivkins、Kochenderfer），第 6 本 MARL 待补。
> - **CS285 官方课程材料：见附录 C** —— Levine 教授的 25 讲 slides、作业、讨论课讲义、期末项目、课程视频，均已下载在课程根目录 `../`。

---

## 一、选择方法论（为什么是这些论文）

本清单遵循用户设定的三条原则——**全面覆盖**（经典奠基 + 各分支代表 + 近期前沿）、**多多益善**（宁全勿缺）、**直接开干**。具体入选标准：

1. **对应课程主线**：CS285 Spring 2026 共 27 讲，覆盖模仿学习 → 策略梯度 → Actor-Critic → 值函数方法 → 高级策略梯度（TRPO/PPO）→ 控制即推断（最大熵/SAC）→ 序列模型与 LLM → 基于模型的 RL → 离线 RL → 探索 → RL 理论 → 多任务/分层。每篇论文都标注了它服务于哪一讲。
2. **领域里程碑**：定义或显著推进了某一子领域的开创性工作（如 DQN 开启深度值函数、TRPO/PPO 定义信赖域策略优化、SAC 定义最大熵 RL）。
3. **分支代表性**：每个技术分支都选入其代表算法族，既有奠基作也有关键改进（如 DQN → Double DQN → PER → Dueling → C51 → Rainbow 的完整演进链）。
4. **前沿延展**：纳入近年重要工作（Decision Transformer、DreamerV3、RLHF/InstructGPT/DPO、Llama 2 等），衔接课程与当前研究。
5. **方法论与可复现性**：专设"综述与实证方法学"类，收录"Deep RL that Matters""What Matters in On-Policy RL""Implementation Matters"等——这些论文教你**如何正确做实验、读懂他人结果**，是常被忽视但极其重要的一课。

**质量保证**：每个 arXiv ID 都经过独立子代理联网核验（抓取 arXiv 摘要页比对标题/作者/日期），下载后再用 `pdfinfo`/`pdftotext` 提取 PDF 内嵌标题二次交叉验证，确保无 ID 张冠李戴。全部 118 篇下载零失败、标题零错配。

---

## 二、目录结构与论文总数

| 目录 | 主题 | arXiv 篇数 | 对应 CS285 讲次 |
|---|---|---:|---|
| `00_surveys_textbooks` | 综述 / 教材 / 实证方法学 / 基准 | 7 | 贯穿全程 |
| `01_imitation_learning` | 模仿学习 / 逆强化学习 | 7 | L2–L3 |
| `02_policy_gradient` | 策略梯度 | 2 | L5, L9 |
| `03_actor_critic` | Actor-Critic | 7 | L6, L9 |
| `04_value_based_dqn` | 值函数方法 / DQN 家族 / 分布式 / 分布视角 | 14 | L7–L8 |
| `05_max_entropy_sac` | 最大熵 RL / SAC | 3 | L11–L13 |
| `06_trust_region_ppo` | 信赖域 / PPO / 实现细节 | 7 | L10 |
| `07_model_based` | 基于模型的 RL | 12 | L15–L16 |
| `08_offline_rl` | 离线强化学习 | 9 | L17–L18 |
| `09_exploration` | 探索 | 5 | L19, L23 |
| `10_multitask_meta_hierarchical` | 多任务 / 元学习 / 分层 | 17 | L23–L24 |
| `11_rl_theory_foundations` | RL 理论基础 | 1 | L20 |
| `12_rlhf_llm` | RLHF / 大语言模型 + RL | 10 | L14 |
| `13_games_alphago` | 博弈 / AlphaGo 系列 | 4 | 案例研究 |
| `14_robotics_continuous_control` | 机器人 / 连续控制 | 7 | 案例研究 |
| `15_world_models_planning` | 世界模型 / 隐空间规划 | 6 | L15–L16 |
| **合计** | | **118** | |

> 另有 13 篇 NOT_ON_ARXIV 奠基经典见附录 A。

---

## 三、CS285 Spring 2026 讲次 → 论文映射（速查）

| 讲次 | 主题 | 核心论文 |
|---|---|---|
| L1 | 深度强化学习导论 | （综述类）|
| L2–L3 | 行为的监督学习（模仿学习） | DAgger, GAIL, AIRL, Guided Cost Learning |
| L4 | 强化学习基础 | （REINFORCE—附录, Q-Learning—附录）|
| L5 | 策略梯度 | Sutton PG（附录）, GAE |
| L6 | Actor-Critic | A3C, DDPG |
| L7 | 值函数方法 | DQN, Double DQN, Dueling, PER |
| L8 | Q-Learning 实战 | Rainbow, C51, QR-DQN, Ape-X, Bootstrapped DQN |
| L9 | Off-Policy 策略梯度 | ACER, Q-Prop, PGQL, IMPALA, Retrace |
| L10 | 高级策略梯度 | TRPO, PPO, ACKTR, Implementation Matters |
| L11–L13 | 变分推断 / 控制即推断 | Soft-Q, SAC, SAC-Apps |
| L14 | RL + 序列模型 + LLM | Decision Transformer, InstructGPT, DPO, Constitutional AI, Llama 2 |
| L15–L16 | 基于模型的 RL | PETS, MBPO, ME-TRPO, PlaNet, Dreamer, World Models |
| L17–L18 | 离线强化学习 | BCQ, BEAR, CQL, IQL, D4RL, Offline RL Tutorial |
| L19 | 探索 | CTS, ICM, RND, VIME, #Exploration |
| L20 | 强化学习理论 | Thompson Sampling Tutorial |
| L23 | 探索与技能学习 | DIAYN, Never Give Up, Agent57 |
| L24 | 多任务与分层 RL | Option-Critic, FeUdal, HIRO, MAML, PEARL |
| L25 | 挑战与开放问题 | （Deep RL that Matters, Statistical Precipice）|

---

## 四、逐篇选择说明

以下按目录分类。每篇给出：**简称 — 标题**（作者，年份）｜arXiv 链接｜*为什么必读*｜→ 对应讲次。

---

### `00_surveys_textbooks` — 综述 / 教材 / 实证方法学 / 基准（7 篇）

这一类是"元知识"：帮助你建立领域全景、并学会如何正确地做和读 RL 实验。

- **A Brief Survey of Deep RL — 深度强化学习简明综述**（Arulkumaran et al., 2017）｜https://arxiv.org/abs/1708.05866
  *为什么必读*：一张深度 RL 的领域地图，用最短篇幅把值函数、策略梯度、Actor-Critic 等主线串起来，适合入门时建立全局观。→ 贯穿全程，配合 L1。

- **An Introduction to Deep RL（专著）**（François-Lavet et al., 2018）｜https://arxiv.org/abs/1811.12560
  *为什么必读*：*Foundations and Trends* 上的系统性专著（100+ 页），比综述更深入，可当作教材使用，覆盖理论到实践。→ 贯穿全程。

- **Deep RL that Matters — 深度 RL 的可复现性**（Henderson et al., 2017）｜https://arxiv.org/abs/1709.06560
  *为什么必读*：警世之作。揭示随机种子、超参、代码实现如何剧烈影响 RL 结果，奠定了"RL 可复现性危机"的讨论基础。做实验前必读。→ L25 开放问题。

- **What Matters in On-Policy RL？大规模实证研究**（Andrychowicz et al., 2020）｜https://arxiv.org/abs/2006.05990
  *为什么必读*：用 250k+ 次实验拆解 on-policy 算法（PPO 类）的每个设计选择到底哪个重要，是把 PPO 调好的实战宝典。→ L10。

- **Deep RL at the Edge of the Statistical Precipice — 统计严谨性**（Agarwal et al., 2021）｜https://arxiv.org/abs/2108.13264
  *为什么必读*：NeurIPS 2021 杰出论文。指出小样本基准（如 Atari）上点估计的误导性，提出 rliable 等稳健评估方法，改变了整个领域的报告规范。→ L25。

- **CoinRun：Quantifying Generalization in RL — 量化泛化**（Cobbe et al., 2018）｜https://arxiv.org/abs/1812.02341
  *为什么必读*：首次系统地把"训练/测试环境分离"引入 RL，揭示智能体的过拟合问题，催生了泛化研究方向。→ L25。

- **Procgen Benchmark — 程序生成基准**（Cobbe et al., 2019）｜https://arxiv.org/abs/1912.01588
  *为什么必读*：CoinRun 的正式扩展，16 个程序生成环境成为泛化与样本效率研究的标准试验台。→ L25。

> 另一篇方法学经典 **Implementation Matters（PPO/TRPO 实现细节，Engstrom 2020）** 与本类主题（如何正确做/读 RL 实验）高度相关，但 PDF 归在 `06_trust_region_ppo`，逐篇说明见该节。

---

### `01_imitation_learning` — 模仿学习 / 逆强化学习（7 篇）

对应 CS285 L2–L3"行为的监督学习"。核心问题：如何从专家示范中学习策略或奖励函数。

- **DAgger — 模仿学习与结构化预测归约到无悔在线学习**（Ross et al., 2011）｜https://arxiv.org/abs/1011.0686
  *为什么必读*：解决行为克隆的"分布漂移"根本难题——策略犯错后进入训练中没见过的状态。DAgger 用迭代式数据聚合给出优雅解法，是模仿学习的必学基石。→ L2。

- **GAIL — 生成对抗模仿学习**（Ho & Ermon, 2016）｜https://arxiv.org/abs/1606.03476
  *为什么必读*：把模仿学习与 GAN 联系起来，绕过显式奖励恢复直接匹配专家占用度量，开创对抗式模仿学习范式。→ L3。

- **Guided Cost Learning — 深度逆最优控制**（Finn et al., 2016）｜https://arxiv.org/abs/1603.00448
  *为什么必读*：把最大熵 IRL 扩展到深度神经网络与未知动力学，是"用样本学奖励函数"的深度化关键一步，并揭示与 GAN 的等价性。→ L3。

- **AIRL — 对抗式逆强化学习学习稳健奖励**（Fu et al., 2017）｜https://arxiv.org/abs/1710.11248
  *为什么必读*：在 GAIL 基础上恢复出**可迁移**的奖励函数（对环境动力学变化稳健），是 IRL 走向实用的重要工作。→ L3。

- **BCO — 从观测中行为克隆**（Torabi et al., 2018）｜https://arxiv.org/abs/1805.01954
  *为什么必读*：只用状态观测序列（无动作标签）做模仿，贴近"看视频学动作"的真实场景，拓展了模仿学习的适用边界。→ L2。

- **SQIL — 通过稀疏奖励 RL 做模仿学习**（Reddy et al., 2019）｜https://arxiv.org/abs/1905.11108
  *为什么必读*：一个惊人简单的想法——给示范状态奖励 +1、其余 0，就把模仿学习变成标准 RL，效果却能媲美对抗方法，展示了问题的另一面。→ L3。

- **One-Shot Imitation Learning — 一次示范模仿**（Duan et al., 2017）｜https://arxiv.org/abs/1703.07326
  *为什么必读*：连接模仿学习与元学习——让智能体看一次新任务的示范就能完成，是"泛化到新任务"的早期代表作。→ L2 / L24。

> IRL 的两篇奠基经典 **Ng & Russell (ICML 2000)** 与 **Ziebart 最大熵 IRL (AAAI 2008)** 无 arXiv 版，见附录 A。

---

### `02_policy_gradient` — 策略梯度（2 篇）

对应 L5"策略梯度"。本目录 arXiv 论文偏少，因为策略梯度的两篇奠基作（Sutton PG 1999、Williams REINFORCE 1992）都早于 arXiv，见附录 A——这本身就说明了该领域的历史纵深。

- **GAE — 高维连续控制的广义优势估计**（Schulman et al., 2015）｜https://arxiv.org/abs/1506.02438
  *为什么必读*：策略梯度方差过大是核心痛点。GAE 用 λ 加权在偏差与方差间平滑权衡，几乎是现代所有策略梯度实现（含 PPO）的标配组件。→ L5 / L6。

- **Q-Prop — 结合 Off-Policy Critic 的样本高效策略梯度**（Gu et al., 2016）｜https://arxiv.org/abs/1611.02247
  *为什么必读*：用带 control variate 的 Taylor 展开把 on-policy 策略梯度与 off-policy critic 结合，兼顾无偏性与样本效率，是理解 on/off-policy 融合的桥梁。→ L9。

---

### `03_actor_critic` — Actor-Critic（7 篇）

对应 L6"Actor-Critic"与 L9"Off-Policy 策略梯度"。

- **A3C — 深度 RL 的异步方法**（Mnih et al., 2016）｜https://arxiv.org/abs/1602.01783
  *为什么必读*：用多个并行 actor 打破样本相关性，无需经验回放即可稳定训练，A3C/A2C 成为 Actor-Critic 的默认基线，影响深远。→ L6。

- **DDPG — 深度确定性策略梯度**（Lillicrap et al., 2015）｜https://arxiv.org/abs/1509.02971
  *为什么必读*：把 DQN 的思想搬到连续动作空间，确定性策略 + off-policy critic，是连续控制深度 RL 的开山之作。→ L6。

- **TD3 — 解决 Actor-Critic 的函数逼近误差**（Fujimoto et al., 2018）｜https://arxiv.org/abs/1802.09477
  *为什么必读*：诊断并修复 DDPG 的高估偏差（双 critic 取小、延迟更新、目标平滑），是连续控制的强基线，三个技巧被广泛复用。→ L6。

- **ACER — 带经验回放的样本高效 Actor-Critic**（Wang et al., 2016）｜https://arxiv.org/abs/1611.01224
  *为什么必读*：把经验回放引入 Actor-Critic，用截断重要性采样 + Retrace 实现稳定的 off-policy 学习，是 off-policy AC 的代表。→ L9。

- **IMPALA — 可扩展分布式深度 RL**（Espeholt et al., 2018）｜https://arxiv.org/abs/1802.01561
  *为什么必读*：提出 V-trace 校正解决分布式 actor-learner 架构下的 off-policy 滞后问题，是大规模分布式 RL 的基础设施级工作。→ L9。

- **NAF — 基于模型加速的连续 Q-Learning**（Gu et al., 2016）｜https://arxiv.org/abs/1603.00748
  *为什么必读*：用归一化优势函数让 Q-Learning 直接用于连续动作（免 actor），并结合基于模型的加速，是连续控制值函数方法的重要探索。→ L6 / L9。

- **PGQL — 结合策略梯度与 Q-Learning**（O'Donoghue et al., 2016）｜https://arxiv.org/abs/1611.01626
  *为什么必读*：揭示策略梯度与 Q-Learning 的深层联系，把二者结合以复用 off-policy 数据，是统一两大范式视角的经典。→ L9。

---

### `04_value_based_dqn` — 值函数方法 / DQN 家族 / 分布式 / 分布视角（14 篇）

对应 L7"值函数方法"与 L8"Q-Learning 实战"。这是内容最丰富的一类，呈现从 DQN 到 Rainbow、再到分布式/分布视角的完整演进链。

- **DQN — 用深度 RL 玩 Atari**（Mnih et al., 2013）｜https://arxiv.org/abs/1312.5602
  *为什么必读*：深度强化学习的开山之作。经验回放 + 目标网络两大稳定化技巧，让神经网络逼近 Q 函数成为可能，直接从像素学会打 Atari。（Nature 2015 正式版见附录 A。）→ L7。

- **Double DQN — 双 Q 学习**（van Hasselt et al., 2015）｜https://arxiv.org/abs/1509.06461
  *为什么必读*：诊断并修复 Q-Learning 的系统性高估偏差，用解耦的动作选择与评估，一行改动显著提升性能，是 DQN 家族的必备改进。→ L7 / L8。

- **PER — 优先经验回放**（Schaul et al., 2015）｜https://arxiv.org/abs/1511.05952
  *为什么必读*：不再均匀采样回放缓冲，而是按 TD 误差优先回放"最有信息量"的转移，大幅提升样本效率，Rainbow 的关键组件。→ L8。

- **Dueling DQN — 对决网络架构**（Wang et al., 2015）｜https://arxiv.org/abs/1511.06581
  *为什么必读*：把 Q 分解为状态价值 V 与优势 A 两条流，在动作对结果影响不大时学得更快，是重要的架构级改进。→ L8。

- **C51 — 强化学习的分布视角**（Bellemare et al., 2017）｜https://arxiv.org/abs/1707.06887
  *为什么必读*：开创**分布式 RL**——不再只估计回报期望，而是建模整个回报分布，理论优美且实践有效，开辟全新研究方向。→ L8。

- **Rainbow — 组合 DQN 的多项改进**（Hessel et al., 2017）｜https://arxiv.org/abs/1710.02298
  *为什么必读*：把 Double、PER、Dueling、C51、Noisy Nets、多步回报六大改进系统性组合并做消融，是 DQN 家族的集大成者与标准基线。→ L8。

- **Noisy Networks — 用于探索的噪声网络**（Fortunato et al., 2017）｜https://arxiv.org/abs/1706.10295
  *为什么必读*：把探索"参数化"进网络权重的可学习噪声，替代 ε-greedy，让探索强度自适应，是 Rainbow 组件之一。→ L8 / L19。

- **QR-DQN — 分位数回归分布式 RL**（Dabney et al., 2017）｜https://arxiv.org/abs/1710.10044
  *为什么必读*：C51 的后继，用分位数回归建模回报分布，摆脱了固定支撑点的限制，理论更干净。→ L8。

- **IQN — 隐式分位数网络**（Dabney et al., 2018）｜https://arxiv.org/abs/1806.06923
  *为什么必读*：QR-DQN 的进一步推广，用隐式分位数函数建模任意分布，是分布式 RL 系列的成熟形态。→ L8。

- **Ape-X — 分布式优先经验回放**（Horgan et al., 2018）｜https://arxiv.org/abs/1803.00933
  *为什么必读*：将 PER 扩展到大规模分布式架构，几百个 actor 共享一个优先回放缓冲，样本吞吐与性能大幅跃升，分布式 RL 的里程碑。→ L8。

- **Retrace(λ) — 安全高效的 Off-Policy RL**（Munos et al., 2016）｜https://arxiv.org/abs/1606.02647
  *为什么必读*：提出低方差、可收敛的 off-policy 回报估计算子，是 ACER、Reactor、Agent57 等诸多算法的理论基石。→ L8 / L9。

- **Never Give Up (NGU) — 学习定向探索策略**（Badia et al., 2020）｜https://arxiv.org/abs/2002.06038
  *为什么必读*：结合 episodic 与 lifelong 好奇心，在最难探索的 Atari 游戏上取得突破，是 Agent57 的前身。→ L8 / L23。

- **Agent57 — 超越 Atari 人类基准**（Badia et al., 2020）｜https://arxiv.org/abs/2003.13350
  *为什么必读*：首个在全部 57 个 Atari 游戏上超过人类的智能体，用自适应探索与元控制器整合长短期记忆，是值函数方法的巅峰之作。→ L8 / L23。

- **Bootstrapped DQN — 自举 DQN 深度探索**（Osband et al., 2016）｜https://arxiv.org/abs/1602.04621
  *为什么必读*：用多个 Q 头做后验采样式的"深度探索"，把不确定性驱动探索引入深度 RL，理论与实用兼具。→ L8 / L19。

> DQN 的 **Nature 2015 正式版**（"Human-level control…"）与 **R2D2**（ICLR 2019，OpenReview）无 arXiv 版，见附录 A。

---

### `05_max_entropy_sac` — 最大熵 RL / SAC（3 篇）

对应 L11–L13"变分推断 / 控制即推断"。这一线把 RL 重新诠释为概率推断问题，最大熵框架是其结晶。

- **Soft Q-Learning — 基于深度能量模型的 RL**（Haarnoja et al., 2017）｜https://arxiv.org/abs/1702.08165
  *为什么必读*：最大熵 RL 的深度化奠基作。用能量模型表示策略，鼓励"在最大化奖励的同时保持随机性"，为 SAC 铺路。→ L11–L13。

- **SAC — 软 Actor-Critic**（Haarnoja et al., 2018）｜https://arxiv.org/abs/1801.01290
  *为什么必读*：最大熵 Actor-Critic 的集大成者，样本高效、稳定、超参鲁棒，是连续控制事实上的黄金标准算法，必学必用。→ L11–L13。

- **SAC Algorithms and Applications — SAC 算法与应用**（Haarnoja et al., 2018）｜https://arxiv.org/abs/1812.05905
  *为什么必读*：SAC 的扩展版，引入自动温度调节（自动调 entropy 系数），并展示真实机器人应用，是实践 SAC 的权威参考。→ L11–L13。

---

### `06_trust_region_ppo` — 信赖域 / PPO / 实现细节（7 篇）

对应 L10"高级策略梯度"。核心问题：如何让策略更新"步子不迈太大"以保证单调改进。

- **TRPO — 信赖域策略优化**（Schulman et al., 2015）｜https://arxiv.org/abs/1502.05477
  *为什么必读*：用 KL 散度约束把"单调改进"的理论保证引入深度策略梯度，是信赖域方法的奠基作，理论深刻。→ L10。

- **PPO — 近端策略优化**（Schulman et al., 2017）｜https://arxiv.org/abs/1707.06347
  *为什么必读*：用裁剪替代目标把 TRPO 的复杂二阶优化简化为一阶，简单、高效、稳定，是当今最广泛使用的策略梯度算法（含 RLHF）。→ L10。

- **ACKTR — Kronecker 因子近似的可扩展信赖域**（Wu et al., 2017）｜https://arxiv.org/abs/1708.05144
  *为什么必读*：用 K-FAC 做自然梯度的高效近似，把二阶优化的样本效率带入实用，是信赖域方法的重要分支。→ L10。

- **ME-TRPO — 模型集成信赖域策略优化**（Kurutach et al., 2018）｜https://arxiv.org/abs/1802.10592
  *为什么必读*：用动力学模型集成缓解基于模型 RL 的模型偏差，把 TRPO 与模型学习结合，是 model-based + 信赖域的代表。→ L10 / L15。

- **PPG — 相位策略梯度**（Cobbe et al., 2020）｜https://arxiv.org/abs/2009.04416
  *为什么必读*：把策略与价值的训练解耦到不同"相位"，解决二者共享网络时的干扰问题，是 PPO 的重要改进。→ L10。

- **DPPO — 丰富环境中运动行为的涌现**（Heess et al., 2017）｜https://arxiv.org/abs/1707.02286
  *为什么必读*：分布式 PPO 的代表，展示了仅靠丰富环境 + 大规模 PPO 就能涌现出复杂运动技能，是"环境即课程"思想的经典演示。→ L10。

- **Implementation Matters — PPO/TRPO 实现细节案例研究**（Engstrom et al., 2020）｜https://arxiv.org/abs/2005.12729
  *为什么必读*：见 `00_surveys`。此处再次强调：读懂 PPO 必须读懂它的实现细节。→ L10。（与综述类交叉引用）

---

### `07_model_based` — 基于模型的 RL（12 篇）

对应 L15–L16"基于模型的 RL"。核心：学习环境动力学模型，用于规划或生成想象数据以提升样本效率。

- **NN Dynamics — 神经网络动力学 + 无模型微调**（Nagabandi et al., 2017）｜https://arxiv.org/abs/1708.02596
  *为什么必读*：清晰展示"先学模型做 MPC、再用无模型微调"的混合范式，是基于模型 RL 的实用入门代表。→ L15。

- **PETS — 用概率动力学模型在少量试验中做深度 RL**（Chua et al., 2018）｜https://arxiv.org/abs/1805.12114
  *为什么必读*：用概率集成模型 + 轨迹采样捕捉不确定性，样本效率极高，是基于模型 RL 的强基线。→ L15–L16。

- **MBPO — 何时该信任你的模型**（Janner et al., 2019）｜https://arxiv.org/abs/1906.08253
  *为什么必读*：理论分析模型 rollout 长度与误差的权衡，提出用短 rollout 生成想象数据，样本效率与稳定性俱佳，是现代 model-based 的标杆。→ L15–L16。

- **I2A — 想象力增强智能体**（Racanière et al., 2017）｜https://arxiv.org/abs/1707.06203
  *为什么必读*：让智能体用学到的模型"想象"多条未来轨迹并整合进决策，即使模型不完美也能受益，思路新颖。→ L15–L16。

- **VPN — 价值预测网络**（Oh et al., 2017）｜https://arxiv.org/abs/1707.03497
  *为什么必读*：不预测像素而直接在抽象状态预测未来价值，是"面向价值的模型学习"（后来 MuZero 思想）的先声。→ L15–L16。

- **SLAC — 随机隐变量 Actor-Critic**（Lee et al., 2019）｜https://arxiv.org/abs/1907.00953
  *为什么必读*：在隐变量模型上做 Actor-Critic，从像素高效学习控制，衔接世界模型与无模型 RL。→ L15–L16。

- **STEVE — 随机集成价值扩展**（Buckman et al., 2018）｜https://arxiv.org/abs/1807.01675
  *为什么必读*：自适应地按模型不确定性加权多步价值扩展，减少模型误差累积，是 model-based 价值估计的精巧工作。→ L15–L16。

- **MVE — 基于模型的价值扩展**（Feinberg et al., 2018）｜https://arxiv.org/abs/1803.00101
  *为什么必读*：用短程模型 rollout 改进价值估计目标，是 STEVE 的前身，展示模型如何"以小博大"提升无模型 RL。→ L15–L16。

- **SimPLe — Atari 上的基于模型 RL**（Kaiser et al., 2019）｜https://arxiv.org/abs/1903.00374
  *为什么必读*：用视频预测模型在 Atari 上做基于模型 RL，在 10 万帧的极低数据预算下取得强效果，推动了像素级世界模型。→ L15–L16。

- **PDDM — 灵巧操作的深度动力学模型**（Nagabandi et al., 2019）｜https://arxiv.org/abs/1909.11652
  *为什么必读*：把基于模型 RL 用于真实机器人灵巧手操作（转笔、转球），展示了 MPC + 学习模型在高维接触控制上的威力。→ L15–L16。

- **VIN — 价值迭代网络**（Tamar et al., 2016）｜https://arxiv.org/abs/1602.02867
  *为什么必读*：NIPS 2016 最佳论文。把价值迭代"嵌入"成可微 CNN 模块，让网络学会规划，是"可微规划"的开创性工作。→ L15–L16。

- **TD-MPC — 面向 MPC 的时序差分学习**（Hansen et al., 2022）｜https://arxiv.org/abs/2203.04955
  *为什么必读*：在隐空间结合 TD 学习与 MPC 规划，兼具无模型的渐近性能与基于模型的样本效率，是近年 model-based 的前沿代表。→ L15–L16。

---

### `08_offline_rl` — 离线强化学习（9 篇）

对应 L17–L18"离线强化学习"。核心：只用固定数据集（不与环境交互）学策略，关键挑战是分布偏移与外推误差。

- **BCQ — 无探索的离线深度 RL**（Fujimoto et al., 2018）｜https://arxiv.org/abs/1812.02900
  *为什么必读*：首次系统揭示离线 RL 的"外推误差"问题，提出约束策略只选数据支撑内的动作，是离线 RL 的开山作之一。→ L17。

- **BEAR — 用自举误差削减稳定 Off-Policy Q-Learning**（Kumar et al., 2019）｜https://arxiv.org/abs/1906.00949
  *为什么必读*：用支撑集匹配（MMD）约束策略，缓解 bootstrapping 误差累积，是离线 RL 策略约束路线的代表。→ L17。

- **BRAC — 行为正则化离线 RL**（Wu et al., 2019）｜https://arxiv.org/abs/1911.11361
  *为什么必读*：统一比较各种行为正则化方法（KL、MMD 等），是离线 RL 方法论的系统性梳理，帮助理清设计空间。→ L17。

- **CQL — 保守 Q-Learning**（Kumar et al., 2020）｜https://arxiv.org/abs/2006.04779
  *为什么必读*：通过压低分布外动作的 Q 值学习保守下界，简单有效、应用极广，是离线 RL 最重要的算法之一，必学。→ L17–L18。

- **IQL — 隐式 Q-Learning 离线 RL**（Kostrikov et al., 2021）｜https://arxiv.org/abs/2110.06169
  *为什么必读*：用期望回归完全避免查询分布外动作，训练稳定、性能强、实现简单，是当前离线 RL 的首选基线之一。→ L17–L18。

- **Decision Transformer — 用序列建模做 RL**（Chen et al., 2021）｜https://arxiv.org/abs/2106.01345
  *为什么必读*：把 RL 重构为条件序列建模（给定目标回报预测动作），用 Transformer 一举打通 RL 与大模型，是范式转变的标志性工作。→ L14 / L17。

- **Trajectory Transformer — 离线 RL 即一个大序列建模问题**（Janner et al., 2021）｜https://arxiv.org/abs/2106.02039
  *为什么必读*：与 Decision Transformer 并列，把整条轨迹当序列建模并用 beam search 规划，展示序列模型做规划的潜力。→ L14 / L17。

- **D4RL — 离线 RL 数据集基准**（Fu et al., 2020）｜https://arxiv.org/abs/2004.07219
  *为什么必读*：离线 RL 的标准数据集与评测基准，几乎所有离线 RL 论文都在其上比较，是做该方向的必备基础设施。→ L17–L18。

- **Offline RL: Tutorial, Review, and Perspectives — 离线 RL 教程综述**（Levine et al., 2020）｜https://arxiv.org/abs/2005.01643
  *为什么必读*：Levine 亲笔的离线 RL 权威综述（也是 CS285 该主题的官方读物），系统梳理问题、方法与开放挑战，必读。→ L17–L18。

---

### `09_exploration` — 探索（5 篇）

对应 L19"探索"与 L23"探索与技能学习"。核心：在稀疏奖励下如何有效探索状态空间。

- **VIME — 变分信息最大化探索**（Houthooft et al., 2016）｜https://arxiv.org/abs/1605.09674
  *为什么必读*：用贝叶斯神经网络量化"信息增益"作为内在奖励，是基于信息论的探索的奠基作。→ L19。

- **CTS — 统一基于计数的探索与内在动机**（Bellemare et al., 2016）｜https://arxiv.org/abs/1606.01868
  *为什么必读*：用密度模型定义"伪计数"，把经典的基于计数探索推广到高维状态，在 Montezuma's Revenge 上取得突破。→ L19。

- **ICM — 好奇心驱动的探索**（Pathak et al., 2017）｜https://arxiv.org/abs/1705.05363
  *为什么必读*：用预测误差（对自身动作后果的"惊讶度"）作内在奖励，即使无外部奖励也能学习，是好奇心探索的代表作。→ L19。

- **#Exploration — 基于计数探索的哈希研究**（Tang et al., 2016）｜https://arxiv.org/abs/1611.04717
  *为什么必读*：用哈希把状态离散化再计数，出奇简单却有效，为"伪计数到底该怎么算"提供了实用而清晰的基线。→ L19。

- **RND — 随机网络蒸馏探索**（Burda et al., 2018）｜https://arxiv.org/abs/1810.12894
  *为什么必读*：用预测随机固定网络输出的误差作内在奖励，简单、可扩展、无需密度模型，成为探索的强基线并首次通关 Montezuma's Revenge。→ L19。

---

### `10_multitask_meta_hierarchical` — 多任务 / 元学习 / 分层（17 篇）

对应 L23"探索与技能学习"与 L24"多任务与分层 RL"。这是篇数最多的一类，涵盖元学习、分层、技能发现、持续学习四条支线。

**元学习（Meta-RL）**

- **MAML — 模型无关的元学习**（Finn et al., 2017）｜https://arxiv.org/abs/1703.03400
  *为什么必读*：元学习的里程碑。学一个"易于微调"的初始化，几步梯度即可适应新任务，算法无关、影响横跨 RL 与监督学习，必学。→ L24。

- **RL² — 用慢 RL 实现快 RL**（Duan et al., 2016）｜https://arxiv.org/abs/1611.02779
  *为什么必读*：把元学习编码进 RNN 的隐状态，让智能体"学会如何学习"，是基于记忆的 Meta-RL 奠基作。→ L24。

- **Learning to Reinforcement Learn**（Wang et al., 2016）｜https://arxiv.org/abs/1611.05763
  *为什么必读*：与 RL² 并列的同期工作，从认知科学视角论证循环网络可自发涌现出强化学习算法，视角独特。→ L24。

- **SNAIL — 简单神经注意力元学习器**（Mishra et al., 2017）｜https://arxiv.org/abs/1707.03141
  *为什么必读*：用时序卷积 + 注意力做元学习，展示注意力机制在快速适应中的威力，是 Meta-RL 架构探索的代表。→ L24。

- **Reptile — 一阶元学习算法**（Nichol et al., 2018）｜https://arxiv.org/abs/1803.02999
  *为什么必读*：MAML 的一阶简化，免去二阶导数却效果相当，让元学习更易实现和扩展。→ L24。

- **ProMP — 近端元策略搜索**（Rothfuss et al., 2018）｜https://arxiv.org/abs/1810.06784
  *为什么必读*：修正 MAML 在 RL 中的信用分配问题，让 Meta-RL 的梯度估计更低方差、更稳定。→ L24。

- **PEARL — 概率上下文变量的高效 Off-Policy Meta-RL**（Rakelly et al., 2019）｜https://arxiv.org/abs/1903.08254
  *为什么必读*：用概率上下文变量解耦任务推断与控制，把 Meta-RL 的样本效率提升几个数量级，是 off-policy Meta-RL 标杆。→ L24。

- **Meta-Gradient RL — 元梯度强化学习**（Xu et al., 2018）｜https://arxiv.org/abs/1805.09801
  *为什么必读*：在线元学习 RL 的超参（如 γ、λ），让算法自适应调整自身目标，是"自调优 RL"的重要思路。→ L24。

**分层 RL（HRL）**

- **Option-Critic — 期权-评论家架构**（Bacon et al., 2016）｜https://arxiv.org/abs/1609.05140
  *为什么必读*：端到端学习时序抽象"期权"（含内部策略与终止条件），是分层 RL 可微化的奠基作。→ L24。

- **FeUdal Networks — 封建制分层 RL**（Vezhnevets et al., 2017）｜https://arxiv.org/abs/1703.01161
  *为什么必读*：Manager/Worker 两层架构，Manager 在隐空间设定方向性子目标，是分层 RL 的经典设计。→ L24。

- **HIRO — 数据高效的分层 RL**（Nachum et al., 2018）｜https://arxiv.org/abs/1805.08296
  *为什么必读*：用 off-policy 修正解决分层 RL 的非平稳性，样本高效且适用真实机器人，是实用 HRL 的代表。→ L24。

- **SNN-HRL — 分层 RL 的随机神经网络**（Florensa et al., 2017）｜https://arxiv.org/abs/1704.03012
  *为什么必读*：先用信息论目标预训练一批技能，再用高层策略调度，是"预训练技能 + 分层复用"路线的先驱。→ L23–L24。

**技能发现**

- **DIAYN — 多样性即所需**（Eysenbach et al., 2018）｜https://arxiv.org/abs/1802.06070
  *为什么必读*：无需任何奖励，仅靠最大化"技能可区分性"就能自发学出多样化技能，是无监督技能发现的代表作。→ L23。

**多任务与持续学习**

- **Distral — 稳健的多任务 RL**（Teh et al., 2017）｜https://arxiv.org/abs/1707.04175
  *为什么必读*：用蒸馏出的"共享策略"作为多任务间的知识桥梁，缓解任务间干扰，是多任务 RL 的经典方案。→ L24。

- **HER — 事后经验回放**（Andrychowicz et al., 2017）｜https://arxiv.org/abs/1707.01495
  *为什么必读*：把失败轨迹重新标注为"达成了另一个目标"，在稀疏奖励的目标条件任务上极其有效，思想简洁而强大，必学。→ L23–L24。

- **EWC — 克服神经网络的灾难性遗忘**（Kirkpatrick et al., 2016）｜https://arxiv.org/abs/1612.00796
  *为什么必读*：用 Fisher 信息保护重要权重来对抗持续学习中的灾难性遗忘，是持续学习的奠基作，对多任务 RL 有直接启发。→ L24。

- **Meta-World — 多任务与元 RL 基准**（Yu et al., 2019）｜https://arxiv.org/abs/1910.10897
  *为什么必读*：50 个机器人操作任务组成的标准基准，为多任务/元 RL 提供公平的评测平台，是做该方向的必备基础设施。→ L24。

> 一次示范模仿 One-Shot Imitation Learning（Duan 2017）亦与本类元学习相关，已归入 `01_imitation_learning`。

---

### `11_rl_theory_foundations` — RL 理论基础（1 篇）

对应 L20"强化学习理论"。经典 RL 理论多见于教科书与会议论文，arXiv 版较少。

- **A Tutorial on Thompson Sampling — 汤普森采样教程**（Russo et al., 2017）｜https://arxiv.org/abs/1707.02038
  *为什么必读*：贝叶斯式探索-利用权衡的权威教程，把后验采样这一优雅思想讲透，是理解探索理论与 bandit 的必读入门。→ L20 / L19。

> RL 理论的更多奠基工作（Q-Learning 收敛性 Watkins & Dayan 1992、Sutton PG 定理 1999 等）见附录 A。CS285 L20 也大量引用 Agarwal/Jin 等人的 RL 理论讲义（非单篇论文）。

---

### `12_rlhf_llm` — RLHF / 大语言模型 + RL（10 篇）

对应 L14"RL + 序列模型 + LLM"。这是近年最热的方向：用 RL 对齐大模型。

- **Deep RL from Human Preferences — 基于人类偏好的深度 RL**（Christiano et al., 2017）｜https://arxiv.org/abs/1706.03741
  *为什么必读*：RLHF 的开山之作。证明可以只用人类对轨迹的两两偏好训练奖励模型再做 RL，是当今大模型对齐的技术源头，必学。→ L14。

- **Fine-Tuning LMs from Human Preferences — 用人类偏好微调语言模型**（Ziegler et al., 2019）｜https://arxiv.org/abs/1909.08593
  *为什么必读*：首次把 RLHF 系统性地用于语言模型微调，奠定了后来 InstructGPT 的技术路线。→ L14。

- **Learning to Summarize from Human Feedback — 从人类反馈学摘要**（Stiennon et al., 2020）｜https://arxiv.org/abs/2009.01325
  *为什么必读*：在摘要任务上把 RLHF 做到超越人类参考，展示了偏好学习的实际威力，是 InstructGPT 的直接前身。→ L14。

- **InstructGPT — 用人类反馈训练模型遵循指令**（Ouyang et al., 2022）｜https://arxiv.org/abs/2203.02155
  *为什么必读*：ChatGPT 背后的核心方法论（SFT + 奖励模型 + PPO 三阶段），定义了现代大模型对齐范式，必学中的必学。→ L14。

- **Constitutional AI — 用 AI 反馈实现无害性**（Bai et al., 2022）｜https://arxiv.org/abs/2212.08073
  *为什么必读*：用一套"宪法"原则和 AI 自我批评替代部分人类标注（RLAIF 的雏形），是可扩展对齐的重要方向。→ L14。

- **DPO — 直接偏好优化**（Rafailov et al., 2023）｜https://arxiv.org/abs/2305.18290
  *为什么必读*：证明可以跳过显式奖励模型和 RL，直接用一个分类损失优化偏好，大幅简化 RLHF 流程，是近年最有影响力的对齐方法之一。→ L14。

- **Scaling Laws for Reward Model Overoptimization — 奖励模型过优化的缩放律**（Gao et al., 2022）｜https://arxiv.org/abs/2210.10760
  *为什么必读*：定量刻画"奖励模型被 RL 钻空子（reward hacking）"的规律，对理解 RLHF 的失效模式至关重要。→ L14。

- **RLAIF vs. RLHF — 用 AI 反馈扩展 RLHF**（Lee et al., 2023）｜https://arxiv.org/abs/2309.00267
  *为什么必读*：系统对比 AI 反馈与人类反馈，论证 RLAIF 可媲美 RLHF，是降低对齐标注成本的关键实证。→ L14。

- **Secrets of RLHF Part I: PPO — RLHF 的秘密（一）**（Zheng et al., 2023）｜https://arxiv.org/abs/2307.04964
  *为什么必读*：深入剖析 RLHF 中 PPO 训练的稳定性技巧与陷阱，是把 RLHF 真正跑通的实战指南。→ L14 / L10。

- **Llama 2 — 开放基础模型与微调聊天模型**（Touvron et al., 2023）｜https://arxiv.org/abs/2307.09288
  *为什么必读*：开源大模型的里程碑，详细披露了其 RLHF 流程（含拒绝采样 + PPO、双奖励模型），是研究实际 RLHF 系统的宝贵一手资料。→ L14。

---

### `13_games_alphago` — 博弈 / AlphaGo 系列（4 篇）

作为课程案例研究。展示深度 RL + 搜索在博弈上的巅峰成就。

- **AlphaZero（arXiv 预印本）— 自我对弈通用 RL 算法精通象棋与将棋**（Silver et al., 2017）｜https://arxiv.org/abs/1712.01815
  *为什么必读*：无需人类棋谱，纯自我对弈 + MCTS 掌握多种棋类，是通用博弈 RL 的巅峰。（注：此 arXiv 版标题为"Mastering Chess and Shogi…"，仅含象棋/将棋；含围棋的 *Science* 2018 正式版见附录 A。）→ 案例研究。

- **MuZero — 用学到的模型规划精通 Atari/围棋/象棋/将棋**（Schrittwieser et al., 2019）｜https://arxiv.org/abs/1911.08265
  *为什么必读*：连规则都不告诉它，只学一个"面向价值"的隐式模型就能规划，统一了基于模型 RL 与博弈搜索，是里程碑式工作。→ 案例研究 / L15。

- **OpenAI Five — 大规模深度 RL 打 Dota 2**（OpenAI et al., 2019）｜https://arxiv.org/abs/1912.06680
  *为什么必读*：在超长时程、部分可观测、多智能体的复杂游戏上用大规模 PPO 击败世界冠军，展示了规模化 RL 的工程极限。→ 案例研究。

- **Player of Games / Student of Games — 统一完美/不完美信息博弈**（Schmid et al., 2021）｜https://arxiv.org/abs/2112.03178
  *为什么必读*：用同一套算法（结合 CFR 与搜索）同时处理完美信息（围棋、象棋）与不完美信息（扑克）博弈，是博弈 RL 的统一尝试。（同一 arXiv ID 的正式发表版更名为 *Student of Games*, Science Advances 2023。）→ 案例研究。

> **AlphaGo**（Nature 2016）、**AlphaGo Zero**（Nature 2017）、**AlphaZero 正式版**（Science 2018）、**AlphaStar**（Nature 2019）均无 arXiv 版，见附录 A。

---

### `14_robotics_continuous_control` — 机器人 / 连续控制（7 篇）

作为课程案例研究。展示深度 RL 在真实机器人与连续控制上的应用与挑战。

- **GPS — 深度视觉运动策略的端到端训练**（Levine et al., 2015）｜https://arxiv.org/abs/1504.00702
  *为什么必读*：Levine 本人的代表作。引导策略搜索让机器人直接从像素端到端学习操作技能，是深度机器人 RL 的奠基作。→ 案例研究。

- **Hand-Eye Coordination — 机器人抓取的手眼协调**（Levine et al., 2016）｜https://arxiv.org/abs/1603.02199
  *为什么必读*：用大规模真实机器人数据（"手臂农场"）学习视觉抓取，展示了数据规模对机器人学习的决定性作用。→ 案例研究。

- **Domain Randomization — 域随机化实现 Sim-to-Real**（Tobin et al., 2017）｜https://arxiv.org/abs/1703.06907
  *为什么必读*：通过随机化仿真的视觉参数让策略零样本迁移到真实世界，是解决 sim-to-real 差距最有影响力的技术之一。→ 案例研究。

- **QT-Opt — 可扩展的视觉机器人操作深度 RL**（Kalashnikov et al., 2018）｜https://arxiv.org/abs/1806.10293
  *为什么必读*：用大规模分布式 Q-Learning 在真实机器人上学习闭环视觉抓取，泛化性极强，是可扩展机器人 RL 的标杆。→ 案例研究。

- **Dactyl — 学习灵巧的手内操作**（OpenAI et al., 2018）｜https://arxiv.org/abs/1808.00177
  *为什么必读*：仅在仿真中训练（大量域随机化）就让真实机械手完成灵巧的方块重定向，是 sim-to-real 的经典演示。→ 案例研究。

- **Solving Rubik's Cube with a Robot Hand — 机械手解魔方**（OpenAI et al., 2019）｜https://arxiv.org/abs/1910.07113
  *为什么必读*：用自动域随机化（ADR）把 sim-to-real 推向极致，让机械手单手拧魔方，展示了课程化随机化的威力。→ 案例研究。

- **DayDreamer — 世界模型用于物理机器人学习**（Wu et al., 2022）｜https://arxiv.org/abs/2206.14176
  *为什么必读*：把 Dreamer 世界模型直接用于真实机器人，在数小时内从零学会行走等技能，连接了世界模型与真实机器人。→ 案例研究 / L15。

---

### `15_world_models_planning` — 世界模型 / 隐空间规划（6 篇）

对应 L15–L16"基于模型的 RL"的隐空间/像素分支。核心：在学到的隐空间世界模型中"做梦"式地规划或学习。

- **World Models — 世界模型**（Ha & Schmidhuber, 2018）｜https://arxiv.org/abs/1803.10122
  *为什么必读*：优雅地展示可以先学一个环境的生成式世界模型，再完全"在梦里"训练策略，是隐空间世界模型的开创性工作。→ L15。

- **Recurrent World Models Facilitate Policy Evolution**（Ha & Schmidhuber, 2018）｜https://arxiv.org/abs/1809.01999
  *为什么必读*：World Models 的 NeurIPS 正式版，更完整地论证了在循环世界模型中演化策略的可行性。→ L15。

- **PlaNet — 从像素学习隐空间动力学做规划**（Hafner et al., 2018）｜https://arxiv.org/abs/1811.04551
  *为什么必读*：在隐空间学习动力学并直接用 CEM 规划，从像素高效控制，是 Dreamer 系列的基础。→ L15–L16。

- **Dreamer (V1) — 通过隐空间想象学习行为**（Hafner et al., 2019）｜https://arxiv.org/abs/1912.01603
  *为什么必读*：在隐空间世界模型中通过反向传播"想象"来学习 Actor-Critic，样本效率与性能俱佳，世界模型 RL 的标杆。→ L15–L16。

- **DreamerV2 — 用离散世界模型精通 Atari**（Hafner et al., 2020）｜https://arxiv.org/abs/2010.02193
  *为什么必读*：首个纯世界模型方法在 Atari 上达到人类水平，离散隐变量是关键，证明"做梦"式学习可扩展到复杂视觉任务。→ L15–L16。

- **DreamerV3 — 用世界模型精通多样领域**（Hafner et al., 2023）｜https://arxiv.org/abs/2301.04104
  *为什么必读*：用同一套超参跨 150+ 任务取得强性能（含从零挖到钻石的 Minecraft），是通用世界模型智能体的前沿代表。→ L15–L16。

---

## 附录 A：无法从 arXiv 下载的奠基经典（NOT_ON_ARXIV）

以下论文是深度强化学习绕不开的奠基工作，但因**发表于 arXiv 出现之前**，或**仅见于 Nature/Science/会议论文集且无预印本**，无法从 arXiv 下载。它们同样属于"必读"，特此列出并说明；建议通过所在期刊/会议官方渠道、Google Scholar 或作者主页获取。

> 以下书目已逐条联网核验：Nature/Science 经出版方引用元数据、Crossref 补充卷期页码；NIPS/ICML/AAAI/ICLR 经 DBLP 与官方论文集；AAAI 2008 另经 PDF 内嵌元数据交叉核对；无 DOI 者的链接均已确认可访问。

**策略梯度 / 值函数奠基**

- **Policy Gradient Methods for Reinforcement Learning with Function Approximation** — Richard S. Sutton, David McAllester, Satinder Singh, Yishay Mansour｜*NIPS 12* (1999), pp. 1057–1063｜https://proceedings.neurips.cc/paper/1999/hash/464d828b85b0bed98e80ade0a5c43b0f-Abstract.html
  策略梯度定理的原始论文，为所有策略梯度方法提供理论根基，L5 的理论基石。

- **Simple Statistical Gradient-Following Algorithms for Connectionist RL（REINFORCE）** — Ronald J. Williams｜*Machine Learning*, 8(3):229–256 (1992)｜https://doi.org/10.1007/BF00992696
  最早的策略梯度算法 REINFORCE 的出处，L5 的起点。

- **Q-learning** — Christopher J. C. H. Watkins, Peter Dayan｜*Machine Learning*, 8(3):279–292 (1992)｜https://doi.org/10.1007/BF00992698
  Q-Learning 及其收敛性证明的正式发表版，L7 的理论基础。

- **Learning from Delayed Rewards** — Christopher J. C. H. Watkins｜博士论文, University of Cambridge (King's College), 1989｜http://www.cs.rhul.ac.uk/~chrisw/new_thesis.pdf
  Q-Learning 的最初提出（Watkins 博士论文），时序差分控制的源头文献。

**DQN / 值函数里程碑**

- **Human-level control through deep reinforcement learning（Nature DQN）** — Volodymyr Mnih, Koray Kavukcuoglu, David Silver 等 19 人｜*Nature*, 518(7540):529–533 (2015)｜https://doi.org/10.1038/nature14236
  DQN 的正式版（相比 2013 arXiv 版加入 target network 等），深度 RL 进入主流视野的标志。

- **Recurrent Experience Replay in Distributed RL（R2D2）** — Steven Kapturowski, Georg Ostrovski, John Quan, Rémi Munos, Will Dabney｜*ICLR* (2019)｜https://openreview.net/forum?id=r1lyTjAqYX
  把 LSTM 与分布式经验回放结合，长期主导 Atari 榜单，是 Agent57/NGU 的直接前身。

**逆强化学习奠基**

- **Algorithms for Inverse Reinforcement Learning** — Andrew Y. Ng, Stuart Russell｜*ICML 17* (2000), pp. 663–670｜https://ai.stanford.edu/~ang/papers/icml00-irl.pdf
  IRL 问题的开创性形式化，L3（模仿 / 逆强化学习）的源头。

- **Maximum Entropy Inverse Reinforcement Learning** — Brian D. Ziebart, Andrew Maas, J. Andrew Bagnell, Anind K. Dey｜*AAAI 23* (2008), pp. 1433–1438｜https://cdn.aaai.org/AAAI/2008/AAAI08-227.pdf
  最大熵 IRL，现代 IRL 与对抗模仿（GAIL/AIRL）的理论根基。

**博弈里程碑（DeepMind，均发表于 Nature/Science，无 arXiv 版）**

- **Mastering the game of Go with deep neural networks and tree search（AlphaGo）** — David Silver, Aja Huang, Chris J. Maddison 等 20 人｜*Nature*, 529(7587):484–489 (2016)｜https://doi.org/10.1038/nature16961
  首个在围棋上击败人类职业棋手的系统，深度 RL + MCTS 的里程碑。

- **Mastering the game of Go without human knowledge（AlphaGo Zero）** — David Silver, Julian Schrittwieser, Karen Simonyan 等 17 人｜*Nature*, 550(7676):354–359 (2017)｜https://doi.org/10.1038/nature24270
  完全不用人类棋谱、纯自我对弈即超越所有前代，自对弈 RL 的巅峰。

- **A general RL algorithm that masters chess, shogi, and Go through self-play（AlphaZero 正式版）** — David Silver, Thomas Hubert, Julian Schrittwieser 等 13 人｜*Science*, 362(6419):1140–1144 (2018)｜https://doi.org/10.1126/science.aar6404
  含围棋的完整版（arXiv 预印本仅象棋/将棋，见 `13_games_alphago`），一套算法通吃三种棋类。

- **Grandmaster level in StarCraft II using multi-agent RL（AlphaStar）** — Oriol Vinyals, Igor Babuschkin, Wojciech M. Czarnecki 等｜*Nature*, 575(7782):350–354 (2019)｜https://doi.org/10.1038/s41586-019-1724-z
  多智能体 RL + 联赛训练在《星际争霸 II》上达到大师级，即时战略博弈的巅峰。

**深度学习背景**

- **Deep Learning** — Yann LeCun, Yoshua Bengio, Geoffrey Hinton｜*Nature*, 521(7553):436–444 (2015)｜https://doi.org/10.1038/nature14539
  深度学习的权威综述，为整个深度 RL 提供神经网络背景。

---

## 附录 B：经典教材（免费全本 PDF，存于 `books/`）

以下是强化学习 / 序贯决策领域的经典教材，均由**作者主页或官方渠道合法公开的免费全本**下载（不含仅在出版社付费售卖、无免费版的书）。每本都经完整性校验（`%PDF` 头 + 文件尾 `EOF` 标记 + `pdfinfo` 无 xref 错误 + 页数）。

| 教材 | 作者 / 年份 | 页数 | 免费来源 | 配合 CS285 |
|---|---|---:|---|---|
| **Reinforcement Learning: An Introduction**（2nd ed.） | Sutton & Barto, 2018 | 548 | incompleteideas.net/book/RLbook2020.pdf | **主教材**，贯穿全程（尤其 L4–L9 基础）|
| **Algorithms for Reinforcement Learning** | Szepesvári, 2010 | 98 | sites.ualberta.ca/~szepesva | 精炼的算法视角小册，L5–L8 |
| **Bandit Algorithms** | Lattimore & Szepesvári, 2020 | 597 | tor-lattimore.com/downloads/book | 探索/理论，L19–L20 |
| **Introduction to Multi-Armed Bandits** | Slivkins, 2019（2024 修订） | 188 | arXiv:1904.07272 | 探索/理论，L19–L20 |
| **Algorithms for Decision Making** | Kochenderfer, Wheeler & Wray, 2022 | 700 | algorithmsbook.com | MDP/不确定性决策/POMDP，L4、L17–L18 |
| **Multi-Agent Reinforcement Learning** | Albrecht, Christianos & Schäfer, 2024 | — | marl-book.com | 多智能体（课程延伸）*|

> \* Albrecht MARL book 的官方 PDF 端点有**每日下载限额**，首次下载当日额度已用尽，待次日补齐（其余 5 本已全部下载并校验完整）。

**详解**

- **Sutton & Barto《强化学习导论》第 2 版** —— RL 领域的"圣经"，从多臂老虎机、动态规划、蒙特卡洛、时序差分一路讲到函数逼近与策略梯度，是 CS285 前半程的主参考。**必读中的必读**。
- **Szepesvári《Algorithms for RL》** —— 不到 100 页的精炼小册，以算法和理论视角快速覆盖核心方法，适合已有基础者查阅。
- **Lattimore & Szepesvári《Bandit Algorithms》** —— 多臂老虎机与探索理论的权威教材，为理解探索-利用权衡、遗憾界、UCB/Thompson 采样提供严格基础，对应 L19–L20。
- **Slivkins《Introduction to Multi-Armed Bandits》** —— bandit 领域另一本优秀入门教材（*Foundations and Trends* 系列），持续更新，与 Lattimore 书互补。
- **Kochenderfer 等《Algorithms for Decision Making》** —— MIT 出品，系统讲解不确定性下的决策（MDP、POMDP、博弈），配大量图示与代码，对理解 RL 的决策论根基极有帮助。
- **Albrecht 等《Multi-Agent RL: Foundations and Modern Approaches》** —— 2024 年 MIT Press 新书，系统覆盖多智能体 RL 的博弈论基础与现代深度方法，是课程多智能体延伸的最佳教材。

**可选扩展**（同为官方免费，本次未纳入 `books/`，按需自取）：
- *An Introduction to Deep RL*（François-Lavet et al., 2018）—— 已作为论文存于 `00_surveys_textbooks/`（arXiv:1811.12560）。
- *RL: Theory and Algorithms*（Agarwal, Jiang, Kakade, Sun, 2022）—— rltheorybook.github.io，CS285 **L20 理论**的直接参考。
- *Mathematical Foundations of RL*（Zhao, 2024）—— 作者 GitHub 全本，偏数学推导。
- *RL: An Overview*（Murphy, 2024）—— arXiv:2412.05265，最新的百科式综述。
- *Regret Analysis of Bandits*（Bubeck & Cesa-Bianchi, 2012）—— arXiv:1204.5721，bandit 理论经典。
- *An Algorithmic Perspective on Imitation Learning*（Osa et al., 2018）—— arXiv:1811.06711，模仿学习专著，配合 L2–L3。
- *Bertsekas* 有 3 本官方免费全本：*A Course in RL*、*Abstract Dynamic Programming*、*Lessons from AlphaZero*（web.mit.edu/dimitrib/www）。

---

## 附录 C：CS285 课程材料（Levine 授课讲义，存于课程根目录）

除论文与教材外，CS285 本身的官方授课材料已下载在课程根目录 `../`（相对 `papers/`）下，这是本论文库最直接的配套。所有 slides 均由 **Sergey Levine 教授亲自编写**。

### `../slides/` — 25 讲课堂 Slides（62 MB，完整，EOF 校验通过）

| 讲 | 标题 | 对应论文类别 |
|---|---|---|
| lec-1 | 深度强化学习导论 | `00_surveys` |
| lec-2–3 | 行为的监督学习（模仿学习） | `01_imitation_learning` |
| lec-4 | 强化学习基础 | （REINFORCE / Q-Learning，见附录 A）|
| lec-5 | 策略梯度 | `02_policy_gradient` |
| lec-6 | Actor-Critic | `03_actor_critic` |
| lec-7 | 值函数方法 | `04_value_based_dqn` |
| lec-8 | Q-Learning 实战 | `04_value_based_dqn` |
| lec-9 | Off-Policy 策略梯度 | `02_policy_gradient` / `03_actor_critic` |
| lec-10 | 高级策略梯度（TRPO/PPO） | `06_trust_region_ppo` |
| lec-11–13 | 变分推断 / 控制即推断 | `05_max_entropy_sac` |
| lec-14 | RL + 序列模型 + LLM | `12_rlhf_llm`、`08_offline_rl`（Decision Transformer）|
| lec-15–16 | 基于模型的 RL | `07_model_based`、`15_world_models_planning` |
| lec-17–18 | 离线强化学习 | `08_offline_rl` |
| lec-19 | 探索 | `09_exploration` |
| lec-20 | 强化学习理论 | `11_rl_theory_foundations` |
| lec-21–22 | 期中复习 1 / 2 | —— |
| lec-23 | 探索与技能学习 | `09_exploration`、`10_...`（DIAYN）|
| lec-24 | 多任务与分层 RL | `10_multitask_meta_hierarchical` |
| lec-25 | 挑战与开放问题 | `00_surveys`（可复现性/泛化）|

### 其他课程材料

- **`../homeworks/`** — 5 份作业说明 PDF（hw1–hw5）：hw1 模仿学习、hw2 策略梯度、hw3 Q-Learning/Actor-Critic、hw4 基于模型的 RL、hw5 探索与离线 RL。
- **`../homework_code/`** — 对应的作业起始代码（hw1–hw5 + 两个期末项目模板 `final_project_llm_rl`、`final_project_offline_online`）。
- **`../sections/`** — 10 份讨论课（section）讲义，覆盖数学基础、自动微分、常见实现陷阱等。
- **`../final_project/`** — 期末项目说明与指南。
- **`../videos/`** — 课程视频：`spring2026/`（27 讲，翻转课堂版）与 `fall2023/`（含更完整的录播）。

> 学习建议：先看 `../slides/lec-N.pdf` 与对应视频，再按上表跳到 `papers/` 里对应类别的论文精读，作业 `../homework_code/hwN` 同步动手。三者结合即为完整的 CS285 自学路径。

---

## 附录 D：下载与校验方法

- **论文下载脚本**：`download.sh`，读取 `manifest.tsv`（格式：`arxiv_id <TAB> 子目录 <TAB> 文件名`），幂等（跳过已存在的有效 PDF）、3 次重试、校验 `%PDF` 文件头、记录到 `download.log`。
- **教材下载**：存于 `books/`，因单文件较大（Sutton & Barto 达 69 MB），采用 `curl -C -` **断点续传**、并校验文件尾 `EOF` 标记与页数（仅查 `%PDF` 头无法发现截断的下载）。
- **ID / 完整性核验**：每个 arXiv ID 先经独立联网子代理抓取摘要页比对标题/作者/日期；下载后再用 `pdfinfo`/`pdftotext` 提取内嵌标题与页数做二次交叉验证。
- **结果**：118 篇 arXiv 论文全部下载成功（0 失败）、标题零错配；5 本教材完整下载并通过 EOF 校验（第 6 本 MARL 待次日补）。曾发现并修正一处 ID 混淆（ME-TRPO 正确 ID 为 1802.10592；1803.00101 实为另一篇 MVE 论文），以及两处大文件截断（Sutton & Barto、Lattimore，已用断点续传修复）。

## 附录 E：全球知名强化学习课程配套材料（存于 `courses/`）

本附录记录在 CS285 之外、全球范围内其他知名强化学习课程的**配套讲义、课件与阅读材料**。所有可下载项均来自**授课教授主页、课程官方站点或公开 GitHub 仓库**（合法、免费、全文 PDF），逐一经过 HTTP 200 探测与 `%PDF`+`EOF` 完整性校验；下载脚本与 CS285 论文库同源（`courses/dl_courses.sh`，读取各 `courses_manifest*.tsv`，串行下载、幂等跳过、4 次断点续传）。对最初判为"不可得"的课程，后续按**教授主页 / 独立课程站 / 公开 GitHub 仓库**三个渠道逐一复查（详见 §E.0 三通道复查批），凡能找到合法公开源者均已补齐。

### E.0 总览

- **已下载课程：37 门，共 605 个文件（约 2.4 GB）**（Stanford 批 52 + 加拿大/英欧/亚洲批 150 + 美国批 224 + 企业/DeepMind 补充批 19 + **三通道复查批 160**），分 37 个子目录存于 `courses/`。全部 605 个 PDF 通过 `%PDF`+`EOF` 完整性校验，0 失败、0 截断。
- **三通道复查批（160 个文件，11 门课）**：对此前标为"登录墙/不可得"的课程，按**教授主页 / 独立课程站 / 公开 GitHub 仓库**三个渠道逐一复查，找回 11 门课的公开课件——CMU 10-703、Princeton COS435、NYU RL-Robotics、Columbia IEOR8100、McGill COMP-579、NTU 李宏毅 Deep RL、Berkeley Bootcamp 实验讲义、UCLA Bertsekas RL&OC、UCLA CS260R（学生笔记）、EPFL EE-568、Imperial 深度 RL（详见 §E.1–E.3）。
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
| `deepmind_ucl_2021` | DeepMind×UCL RL Lecture Series 2021（全 13 讲） | DeepMind / Hado van Hasselt 等 | 13 | 全程正统 RL 讲授 |
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
| `deepmind_adlrl_2018` | Advanced Deep Learning & RL (2018，DL 10 讲 + RL 8 讲) | UCL×DeepMind | 18 | DL+RL 完整体系 |
| `openai_spinningup` | Spinning Up in Deep RL（164 页完整文档 PDF） | OpenAI / Josh Achiam | 1 | 工程实现入门经典 |
| `cmu_10703` | 10-703 Deep RL（Fall 2019 完整版） | CMU / Fragkiadaki 等 | 35 | 全程 + 深度 RL |
| `princeton_cos435` | COS435/ECE433 Intro to RL（Spring 2025） | Princeton / Benjamin Eysenbach | 28 | 全程，含 precept |
| `nyu_rl_robotics` | RL & Optimal Control for Robotics（Fall 2024） | NYU / Ludovic Righetti | 14 | lec-5~14 控制/机器人 |
| `columbia_ieor8100` | IEOR8100 RL（Spring 2018） | Columbia / Shipra Agrawal | 16 | lec-4~9 + 探索理论 |
| `mcgill_comp579` | COMP-579 RL（Winter 2023/2024） | McGill/Mila / Doina Precup | 25 | 全程基础 + 理论 |
| `ntu_hungyi_drl` | 深度强化学习（李宏毅 MLDS/ML） | NTU / Hung-yi Lee 李宏毅 | 8 | lec-5~9 中文友好 |
| `berkeley_deeprl_bootcamp` | Deep RL Bootcamp 实验讲义（Aug 2017） | Berkeley / Abbeel 等 | 4 | 动手实验（幻灯片已失效）|
| `ucla_bertsekas_rloc` | RL and Optimal Control 官方 slides + 书稿 | UCLA(org) / Dimitri Bertsekas | 15 | lec-15~18 控制/DP 理论 |
| `ucla_cs260r_notes` | CS260R RL（W26）**学生笔记** | UCLA / 学生整理（非官方）| 5 | lec-4~10 参考 |
| `epfl_ee568` | EE-568 Reinforcement Learning | EPFL / Volkan Cevher | 9 | 全程，含 IL/RLHF |
| `imperial_rl` | 深度强化学习引论（86 页合订） | Imperial / Pierre Richemond | 1 | lec-4~10 入门 |

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
- **CMU 10-703（Fall 2019，三通道复查找回）**：最新的 F25 课件托管于 Dropbox/Drive（签名下载域在本机网络被拦截），但课程 GitHub org 仓库 `cmudeeprl/703website_f19` 保留了 **Fall 2019 完整版 35 个文件**（讲座 lecture_1~25 + 5 份 recitation），已全部下载入 `cmu_10703/`。覆盖 MDP→DP→MC/TD→值/策略方法→DQN→策略梯度→模型/规划→模仿/逆 RL→探索→分层等，是 CS285 的高度平行参照。（F25 入口仍列于 §E.4。）
- **Princeton COS435/ECE433（Eysenbach, Spring 2025，复查找回）**：Ben Eysenbach 的公开教学仓库 `ben-eysenbach/intro-rl` 提供全套 slides——20 讲（what-is-RL→MDP→bandits→CEM/MPC→模仿→策略梯度→值函数→值/策略迭代→Q-learning→DQN→PPO→DDPG/TD3→随机策略→最大熵 RL→探索→多智能体）+ 7 份 precept notes + 项目说明，共 28 个文件，存于 `princeton_cos435/`。此前误判为 403，实为公开。
- **NYU RL & Optimal Control for Robotics（Righetti, Fall 2024，复查找回）**：14 讲，从优化基础/QP/非线性最优控制/MPC/采样控制→Bellman 原理/VI-PI→Q-learning/深度 Q→策略梯度与 Actor-Critic→模仿学习→AlphaGo→展望，偏机器人控制视角，存于 `nyu_rl_robotics/`。
- **Columbia IEOR8100（Shipra Agrawal, Spring 2018，复查找回）**：教授公开仓库 `sa3305/rl` 提供 syllabus + 16 个课件（MDP、tabular/函数逼近 Q-learning、近似 DP、策略梯度、Actor-Critic、近似 RL、RL in Robotics、探索-利用理论、ES 等），存于 `columbia_ieor8100/`。探索理论部分对标 lec-19/20。
- **Berkeley Deep RL Bootcamp（Aug 2017，部分找回）**：15 个著名幻灯片原托管于 Google Drive，现已设为私有（401→登录），确认不可得；但官方**实验讲义 PDF**（prelab + lab3/4/5，共 4 份）在镜像仓库存活，已下载入 `berkeley_deeprl_bootcamp/`（lab1-2 原为 notebook，无 PDF）。
- **UCLA（周博磊课程 org + 学生笔记，复查找回）**：周博磊官方课件在 Canvas（登录墙），但其课程 org `ucla-rlcourse` 公开托管了 **Dimitri Bertsekas《RL and Optimal Control》作者官方 slides**（13 讲 + 总览 + 全书草稿，共 15 份，存于 `ucla_bertsekas_rloc/`，是 DP/最优控制理论的权威补充）；另有学生 `azh05/CS260R` 公开的 **CS260R（W26）个人课堂笔记 5 份**（存于 `ucla_cs260r_notes/`，**注意：此为学生自行整理的笔记，非周博磊官方课件**，仅作参考）。

### E.2 加拿大

- **U Alberta（Martha White）**：与 Coursera「强化学习专项」配套的课程 slides（17 讲 + 统计背景 + syllabus），是 Sutton & Barto 教材的官方讲授版，基础扎实。
- **U Waterloo CS885（Poupart, Spring 2018）**：41 个文件、最完整的一届，从 MDP、值/策略迭代到 DQN、策略梯度、Actor-Critic、信赖域、探索、逆 RL、多智能体、部分可观测全覆盖。
- **U Toronto IntroRL（Farahmand, Fall 2025）**：课程 reader（FRL）+ 7 讲 slides + 4 份作业 + 项目 + 3 份数学 tutorial（概率/线代/优化），自成完整教学包。
- **UBC CPSC533V（van de Panne）**：偏「学习运动控制」，9 份 notes/slides 覆盖 DQN/DDPG/TD3、策略梯度、MPC、RL 技巧与人形机器人。
- **UMass CMPSCI687（da Silva, Fall 2024）**：一份合订的完整课程讲义 + syllabus，理论参考价值高。
- **McGill/Mila COMP-579（Doina Precup，复查找回）**：Precup 的公开课程主页 `cs.mcgill.ca/~dprecup/courses/rl.html` 开放了 Winter 2023/2024 两届的**幻灯片 PDF**（录像才在 MyCourses 登录墙内），去重后共 25 个文件：导论→bandits/regret→MDP 与策略评估→最优 DP→MC→TD→多步→Dyna 规划→函数逼近（预测/控制/资格迹）→策略梯度→options/分层→MCTS→探索→元学习，另含历年 hw/midterm，存于 `mcgill_comp579/`。
- **UdeM/Mila IFT6162（Bacon）、IFT6760**：仅有学生作业/项目仓库，无教师课件公开，见 §E.5。

### E.3 英国 / 欧洲

- **UCL David Silver RL 经典 10 讲**：RL 入门最著名的公开课之一，10 讲 slides + Easy21 作业 + 历年考题与答案，共 13 个文件。**强烈推荐作为 CS285 前置**。
- **Edinburgh INFR11010（Albrecht, 2025）**：15 讲，含 bandits、MDP、MC/TD、规划、函数逼近、深度 RL、奖励、超越马尔可夫、MARL 与「搭建完整 RL 系统」实践讲。Albrecht 亦是 MARL 教科书作者。
- **DeepMind×UCL RL Lecture Series 2021（全 13 讲）**：DeepMind 研究员（Hado van Hasselt 等）主讲的正统 RL 系列，从导论、探索与控制、MDP 与 DP、无模型预测/控制、函数逼近、基于模型、策略梯度与 Actor-Critic、近似 DP、离策略与多步、到 Deep RL 1/2，全程 13 讲。官方站点为 JS 渲染的 SPA、GCS 桶禁止枚举，故先从公开镜像 `yjavaherian/deepmind-x-ucl-rl` 还原各讲的确切文件名，再逐一回到**官方 `storage.googleapis.com/deepmind-media` 桶** HEAD 校验 200 后下载（全部来自官方源）。
- **UCL×DeepMind Advanced Deep Learning & RL（2018，全 18 讲）**：DeepMind 在 UCL 开设的「深度学习 + 强化学习」完整体系课，DL 10 讲（引论/TensorFlow/反向传播/CNN/RNN/端到端/优化/注意力与记忆/NLP/无监督与生成模型）+ RL 8 讲（引论/探索/MDP/无模型/函数逼近/策略梯度/规划与模型/进阶专题）。官方 2018 桶已下线（全路径 404），转从公开 GitHub 存档 `gouxiangchen/UCL_Advanced_Deep_Learning_and_Reinforcement_Learning`（逐字保留课程原始 slide）下载。**RL 8 讲是 David Silver 经典课的 DeepMind 官方讲授版**，DL 10 讲则补齐深度学习基础。
- **UPenn ESE6500 Learning in Robotics（Chaudhari, S25）**：一份高质量合订讲义，机器人中的学习与估计视角，补充 CS285 的控制即推断章节。
- **EPFL EE-568（Volkan Cevher，复查找回）**：全套 RL 课件（9 讲：DP I/II→线性规划→策略梯度 I/II→深度 RL→模仿学习→RLHF→Q-learning），经学生镜像 `victor-pcll/EE568-Reinforcement-Learning` 保留，存于 `epfl_ee568/`。含 RLHF 一讲，与 CS285 lec-14 方向契合。
- **Imperial College 深度 RL 引论（Pierre Richemond，复查找回）**：讲师本人公开的 86 页深度强化学习引论合订讲义（`prichemond/introdeeprl`），存于 `imperial_rl/`。
- **Oxford ML（de Freitas）、TUM I2DL（Niessner）——找到但非 RL，未收录**：三通道复查中发现这两门著名公开课的完整幻灯片（各 12 讲，HTTP 200 可下），但二者本质是**深度学习基础课**而非 RL；且 Oxford 页面上真正的 RL 讲义（15/16 讲）已是死链、拿不到。按"本库聚焦 RL 课程"的定位，**未纳入**（如需 DL 基础配套可自行按上述主页下载）。
- **Cambridge、ETH Zürich、UCL COMP0089、TUM 专门 RL 课**：仍为登录墙（ETH 全部资源 401、Niao He 课经 Moodle）、仅学生作业公开、或仅有实验课，见 §E.5。

### E.4 仅存链接的资源（源码 / 在线文档 / 视频，未下载 PDF）

以下为**框架文档与代码仓库**——其价值在于可运行代码与在线文档而非 PDF，故仅记录入口，建议 `git clone` 或在线阅读。（注：OpenAI Spinning Up 另提供完整 164 页 PDF 文档，已下载入 `openai_spinningup/`，见 §E.0；此处入口用于其配套代码与在线版。）

| 资源 | 入口 | 说明 |
|---|---|---|
| OpenAI Spinning Up（代码/在线版） | spinningup.openai.com · github.com/openai/spinningup | 最佳 Deep RL 入门文档 + 代码（PDF 已入库）|
| Hugging Face Deep RL Course | huggingface.co/learn/deep-rl-course | 免费实战课程（纯网页，无 PDF 构建）|
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
| DeepMind×UCL 2021 视频 | YouTube 播放列表 | 13 讲 slides 已全部下载（见 §E.0/§E.3）；视频另在此 |
| 中文：Hands-on-RL / easy-rl | github.com/boyu-ai/Hands-on-RL · github.com/datawhalechina/easy-rl | 中文动手学 RL / 蘑菇书 |

### E.5 登录墙 / 无公开材料（已核实，不可抓取）

以下课程经探测确认**仅对注册学生开放（Canvas/Moodle/Google 登录）**、**返回 403**、**仅有视频**或**无公开课件**，如实记录以示完整。（注：经三通道复查后，Princeton COS435、CMU 10-703、Columbia IEOR8100、McGill COMP-579、EPFL EE-568、Imperial 深度 RL、NYU RL-Robotics、Berkeley Bootcamp 实验讲义、UCLA Bertsekas 等已找回并移出本节，见 §E.1–E.3。）

- **美国**：UMich CSE598（登录）、Georgia Tech CS7642（仅 syllabus/视频，无课件 PDF）/ CS8803（登录）、Columbia ORCS E4529（登录；同讲师的 IEOR8100 已找回入库）、UChicago MPCS53112（Canvas）、UCSD CSE291（题为「AI Agents」，与 CSE190 重合）。**Berkeley Deep RL Bootcamp 幻灯片**：15 个著名讲座幻灯片原托管的 Google Drive 文件夹现已私有（401→登录），确认不可得；仅实验讲义找回（见 §E.1）。
- **NYU**：Deep Decision Making & RL / RL with Foundation Models —— 仅 2020 版 syllabus 与作业仓库公开，课件在 Canvas。（Righetti 的 RL-Robotics 是另一门课，已找回入库。）
- **英欧**：Cambridge L171/R171 / MLMI7（仅学生作业报告公开）、Oxford AIMS/Stats CDT、UCL COMP0089（仅学生作业 notebook 公开）、ETH Zürich（PAI / IntroML 全部资源 401，Niao He「Foundations of RL」经 Moodle 登录）、TUM 专门 RL（AIR chair 仅实验/实践课，无讲座 PDF）—— 登录墙或无公开讲座课件。
- **英欧（找到但非 RL，未收录）**：Oxford ML（Nando de Freitas，12 讲）与 TUM I2DL（Niessner，12 讲）幻灯片均公开可下，但二者是**深度学习基础课而非 RL**（且 Oxford 自身的 RL 讲义为死链），按本库定位未纳入。
- **加拿大**：UdeM/Mila IFT6162（Bacon）、IFT6760 —— 仅学生作业/项目仓库，无教师课件公开。（McGill COMP-579 已找回入库。）
- **亚洲**：NUS CS4246/CS5446（课件已迁至 Canvas/LumiNUS 登录）、NTU EE6231 / RL for Finance（另李宏毅 Deep RL 已找回入库）、HKU COMP3340（应用深度学习，非 RL）、HKUST（COMP4212 / AIAA5025 / ARIN5204 / IOTA5201，无公开幻灯片）、CUHK AIST4050（无公开材料；周博磊 IERG5350 已收录）、KAIST（CS.30707 / AI611，仅学生作业）、U Tokyo（松尾研 RL 课注册制、无 PDF 链接）、中国「AI 101 计划」—— 无公开全文课件或仅登录可见。

---

*本文档由 Claude Code 生成，配套 CS285 Spring 2026 课程视频（27 讲，存于 `../videos/`）。*

