# Stanford CS336: Language Modeling from Scratch — Spring 2026

完整课程资料库(讲座视频 + 幻灯片/讲义 + 5 个作业 + 课程网站存档)。

- **课程主页**: https://cs336.stanford.edu/
- **讲师**: Percy Liang, Tatsunori Hashimoto
- **YouTube 播放列表**: https://www.youtube.com/playlist?list=PLoROMvodv4rMqXOcazWaTUHhq-yembLCV
- **学期**: 2026 春季(3 月 30 日 – 6 月 10 日)
- **下载日期**: 2026-08-22

---

## 目录结构

```
CS336-Spring2026/
├── README.md                  ← 本文件(总索引)
├── videos/                    ← 18 个讲座视频(1080p MP4,内嵌中英文字幕)
│   ├── 01 - ... Lecture 1.mp4
│   ├── *.en.srt / *.zh-Hans.srt  ← 独立字幕文件
│   └── download_archive.txt   ← yt-dlp 断点续传记录
├── lectures/                  ← 官方讲义仓库(github.com/stanford-cs336/lectures)
│   ├── lecture_*.pdf          ← PDF 幻灯片(第 3/4/5/8/9/11/15/16 讲)
│   ├── lecture_*.py           ← 可执行讲义(第 1/2/6/7/10/12/13/14/17 讲)
│   ├── references.py          ← 全部参考文献
│   └── images/                ← 149 张讲义配图
├── assignments/               ← 5 个作业(含 PDF 说明 + 起始代码 + 测试)
│   ├── assignment1-basics/    ← 分词器 + Transformer + 训练
│   ├── assignment2-systems/   ← Triton kernel + 分布式
│   ├── assignment3-scaling/   ← 缩放定律
│   ├── assignment4-data/      ← 数据处理
│   └── assignment5-alignment/ ← 对齐 + RLVR(含 safety/RLHF 补充)
├── course_website/            ← 课程主页 HTML 存档(含完整日程)
└── download_videos.sh         ← 视频下载脚本(可重跑,自动跳过已完成)
```

---

## 完整讲座日程(18 讲)

| # | 日期 | 标题 | 讲者 | 讲义格式 | 视频 |
|---|------|------|------|----------|------|
| 1 | 3/30 | Overview, Tokenization(概述、分词) | Percy | `lecture_01.py` | ✅ |
| 2 | 4/1  | PyTorch (einops), 资源核算(FLOPs/内存/算术强度) | Percy | `lecture_02.py` | ✅ |
| 3 | 4/6  | Architectures, hyperparameters(架构、超参) | Tatsu | `lecture_03.pdf` | ✅ |
| 4 | 4/8  | Attention alternatives & MoE(注意力变体、专家混合) | Tatsu | `lecture_04.pdf` | ✅ |
| 5 | 4/13 | GPUs, TPUs | Tatsu | `lecture_05.pdf` | ✅ |
| 6 | 4/15 | Kernels, Triton, XLA | Percy | `lecture_06.py` | ✅ |
| 7 | 4/20 | Parallelism(并行) | Percy | `lecture_07.py` | ✅ |
| 8 | 4/22 | Parallelism(并行) | Tatsu | `lecture_08.pdf` | ✅ |
| 9 | 4/27 | Scaling laws(缩放定律) | Tatsu | `lecture_09.pdf` | ✅ |
| 10 | 4/29 | Inference(推理) | Percy | `lecture_10.py` | ✅ |
| 11 | 5/4  | Scaling laws(缩放定律) | Tatsu | `lecture_11.pdf` | ✅ |
| 12 | 5/6  | Evaluation(评估) | Percy | `lecture_12.py` | ✅ |
| 13 | 5/11 | Data: sources, datasets(数据:来源、数据集) | Percy | `lecture_13.py` | ✅ |
| 14 | 5/13 | Data: filtering, dedup, mixing, synthetic(数据:过滤/去重/混合/合成) | Percy | `lecture_14.py` | ✅ |
| 15 | 5/18 | Mid/post-training (SFT/RLHF)(中/后训练) | Tatsu | `lecture_15.pdf` | ✅ |
| 16 | 5/20 | Post-training - RLVR(后训练 - RLVR) | Tatsu | `lecture_16.pdf` | ✅ |
| 17 | 5/27 | Alignment - multimodality(对齐 - 多模态) | Percy | `lecture_17.py` | ✅ |
| 18 | 6/3  | Guest lecture: Dan Fu(客座讲座) | Dan Fu | — | ✅ |

> **说明**:官网还列了 6/1 的 Daniel Selsam 客座讲座,但截至下载时 YouTube 播放列表尚未发布该视频,故本库共 18 个视频。

---

## 作业总览(5 个)

| 作业 | 主题 | 说明 PDF | 仓库 |
|------|------|----------|------|
| 1 | **Basics**:BPE 分词器、Transformer、训练循环 | `cs336_assignment1_basics.pdf` | assignment1-basics/ |
| 2 | **Systems**:Triton kernel、Flash Attention、分布式训练 | `cs336_assignment2_systems.pdf` | assignment2-systems/ |
| 3 | **Scaling**:缩放定律拟合 | `cs336_assignment3_scaling.pdf` | assignment3-scaling/ |
| 4 | **Data**:数据管线、过滤、去重 | `cs336_assignment4_data.pdf` | assignment4-data/ |
| 5 | **Alignment & Reasoning RL**:SFT、RLVR、对齐 | `cs336_spring2026_assignment5_alignment.pdf` + safety/RLHF 补充 | assignment5-alignment/ |

---

## 使用指南

### 1. 观看视频
`videos/` 下是 1080p MP4,已**内嵌**英文 + 中文简体字幕(播放器可切换)。
每个视频另附独立的 `.en.srt`(英文)和 `.zh-Hans.srt`(中文简体)字幕文件,方便检索或转文字。

### 2. 阅读 PDF 幻灯片
`lectures/lecture_XX.pdf` 直接用 PDF 阅读器打开(第 3/4/5/8/9/11/15/16 讲)。

### 3. 运行 `.py` 可执行讲义
第 1/2/6/7/10/12/13/14/17 讲是 Percy 独创的"**可执行讲义**"(executable lecture)——
把讲义写成带内联说明的 Python 代码,运行后生成可交互的追踪网页。运行方法:

```bash
cd lectures
pip install -r requirements.txt   # 若有;否则按缺啥装啥
python execute.py -m lecture_01   # 生成 lecture_01 的 trace
```

> 这些 `.py` 文件本身也可直接当讲义**阅读**——代码 + 注释即完整讲义内容。

### 4. 做作业
每个作业仓库自带 `README.md`、说明 PDF、起始代码和测试。以作业 1 为例:

```bash
cd assignments/assignment1-basics
# 按仓库 README 配置环境(通常用 uv 或 conda),Linux + NVIDIA GPU 体验最佳
uv sync            # 或 pip install -e .
pytest             # 运行测试驱动开发
```

> ⚠️ 课程作业环境在 **Linux + NVIDIA GPU** 下体验最佳。Windows 上可做前期分词/数据部分,涉及 GPU kernel 和分布式的部分建议用 Linux 服务器或 WSL2。

---

## 资料库规模

| 类别 | 数量 | 大小 |
|------|------|------|
| 讲座视频(1080p MP4,内嵌中英字幕) | 18 | 5.5 GB |
| 英文字幕(.en.srt + .en-US.srt) | 18 组 | — |
| 中文字幕(.zh-Hans.srt) | 17/18 | — |
| PDF 幻灯片 | 8 | ~50 MB |
| .py 可执行讲义 | 9 | — |
| 作业仓库(含 6 份说明 PDF) | 5 | ~310 MB |
| **合计** | | **约 6.0 GB** |

> 每个视频还附带 `.description`(视频简介)、`.webp`/`.jpg`(缩略图)、`.info.json`(元数据)。

---

## 附注:缺失/受限资料

- **第 2 讲中文字幕**:第 2 讲的中文字幕是 YouTube 自动翻译字幕,首次批量下载时因提取器抖动 + 限流(HTTP 429)未落盘。已设后台任务(`backfill_lecture2.sh`)带退避重试自动补全;若最终仍缺,视频内已**内嵌**中英字幕、且独立英文字幕完整,不影响观看。可手动重跑该脚本补下。
- **`spring2026-lectures` 私有仓库**:官网部分讲义(如 Lecture 7 的 `nonexecutable/*.pdf` 版本)托管在该私有仓库,仅对选课学生开放,无法公开下载。所有讲座内容已通过公开 `lectures` 仓库的 `.py` 版本完整覆盖,不影响学习。
- 视频以官方 YouTube 播放列表为准;如后续官方补发 Daniel Selsam 客座讲座,重跑 `download_videos.sh` 即可增量下载(已下的会自动跳过)。

---

*本资料库仅供个人学习使用,版权归 Stanford University 及课程讲师所有。*
