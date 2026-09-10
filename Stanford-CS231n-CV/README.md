# Stanford CS231n —— Deep Learning for Computer Vision（深度学习与计算机视觉）

## 课程信息

- **课程名称**: CS231n: Deep Learning for Computer Vision（深度学习与计算机视觉）
- **主讲教师**: Fei-Fei Li（李飞飞）、Ehsan Adeli、Justin Johnson、Serena Yeung 等（历年）；本次镜像为 **Spring 2026** 学期
- **开课单位**: Stanford University
- **官方网站**:
  - 课程主页: https://cs231n.stanford.edu/
  - 课程表: https://cs231n.stanford.edu/schedule.html
  - 课程笔记 (notes): https://cs231n.github.io/
  - 作业说明: https://cs231n.stanford.edu/assignments.html
- **YouTube Playlist**: https://www.youtube.com/playlist?list=PLoROMvodv4rOmsNzYBMe0gJY2XS8AQg16
  （官方注明该合集为往年录像，非本学期版本，供后续视频下载环节参考。）

---

## 已下载内容

### 一、讲义幻灯片 —— 目录 `slides/`（Spring 2026, 来源 cs231n.stanford.edu/slides/2026/）

| # | 主题 | 文件 |
|---|------|------|
| 1 | Introduction (Part 1) | `lecture_1_part_1.pdf` |
| 1 | Introduction (Part 2) | `lecture_1_part_2.pdf` |
| 2 | Image Classification with Linear Classifiers | `lecture_2.pdf` |
| 3 | Regularization and Optimization | `lecture_3.pdf` |
| 4 | Neural Networks and Backpropagation | `lecture_4.pdf` |
| 5 | Image Classification with CNNs | `lecture_5.pdf` |
| 6 | CNN Architectures | `lecture_6.pdf` |
| 7 | Recurrent Neural Networks | `lecture_7.pdf` |
| 8 | Attention and Transformers | `lecture_8.pdf` |
| 9 | Object Detection, Segmentation, Visualizing & Understanding | `lecture_9.pdf` |
| 10 | Video Understanding | `lecture_10.pdf` |
| 11 | Large Scale Distributed Training | `lecture_11.pdf` |
| 12 | Self-supervised Learning | `lecture_12.pdf` |
| 13 | Generative Models 1 | `lecture_13.pdf` |
| 14 | Generative Models 2 | `lecture_14.pdf` |
| 15 | 3D Vision | `lecture_15.pdf` |
| 16 | Vision and Language | `lecture_16.pdf` |

**讨论/复习课幻灯片 (Discussion Sections)**:
| 主题 | 文件 |
|------|------|
| Backprop Review | `section_2_backprop.pdf` |
| Final Project Overview | `section_3_project.pdf` |
| RNNs & Transformers Review | `section_5.pdf` |

**补充讲义 (Handouts)**:
| 主题 | 文件 |
|------|------|
| Linear Backprop Example | `handout_linear-backprop.pdf` |
| Derivatives Notes | `handout_derivatives.pdf` |

> 幻灯片合计约 59 MB，全部为真实 PDF（已校验 `%PDF` 文件头）。

### 二、课程笔记 —— 目录 `notes/`（来源 cs231n.github.io，保存为 HTML）

| 文件 | 内容 |
|------|------|
| `classification.html` | 图像分类: kNN / L1-L2 距离 |
| `linear-classify.html` | 线性分类: SVM / Softmax |
| `optimization-1.html` | 最优化: 梯度下降 |
| `optimization-2.html` | 反向传播 (Backpropagation) |
| `neural-networks-1.html` | 神经网络（一）: 结构与激活函数 |
| `neural-networks-2.html` | 神经网络（二）: 数据预处理 / 初始化 |
| `neural-networks-3.html` | 神经网络（三）: 学习与调参 |
| `neural-networks-case-study.html` | 神经网络案例分析 |
| `convolutional-networks.html` | 卷积神经网络 (CNN) |
| `understanding-cnn.html` | 理解与可视化 CNN |
| `transfer-learning.html` | 迁移学习 |
| `rnn.html` | 循环神经网络 (RNN) |
| `python-numpy-tutorial.html` | Python / NumPy 教程 |
| `setup-instructions.html` | 环境配置说明 |

> 共 14 个 HTML 笔记页（约 708 KB）。注: 保存的为 HTML 正文，页内图片仍指向 cs231n.github.io 外链（未内嵌）。

### 三、作业 —— 目录 `assignments/`（Spring 2026 starter code，来源 cs231n.github.io/assignments/2026/）

| 作业 | 内容 | 文件 |
|------|------|------|
| Assignment 1 (12%) | Image Classification, kNN, Softmax, 全连接网络 | `assignment1.zip` |
| Assignment 2 (18%) | Batch Normalization, Dropout, 卷积网络, 网络可视化, RNN 图像描述 | `assignment2.zip` |
| Assignment 3 (15%) | Transformer 图像描述, 自监督学习, 扩散模型, CLIP 与 DINO | `assignment3.zip` |

> 三个作业 starter code zip 均为真实 ZIP 文件（已校验 `PK` 文件头），合计约 24 MB。作业说明网页:
> - https://cs231n.github.io/assignments2026/assignment1/
> - https://cs231n.github.io/assignments2026/assignment2/
> - https://cs231n.github.io/assignments2026/assignment3/

---

## 考试 (Exams)

- **In-Class Midterm（期中考试）**: Spring 2026 定于 5 月 12 日课堂进行；官网未提供可下载的试卷文件，故 **无 `exams/` 目录**。

---

## 未能获取的内容及原因

| 项目 | 原因 |
|------|------|
| Lecture 17 (World Modeling) / Lecture 18 (Human-Centered AI) 幻灯片 | 课程表未列出对应 PDF（客座讲座/尚未发布） |
| Python/Numpy、Backprop、PyTorch 的 Colab notebook | 以 Google Colab 链接分发（colab.research.google.com/github/cs231n/...），非直接文件；对应内容已在 `notes/` 或作业 zip 中包含 |
| 期中试卷 | 官方未公开发布可下载文件 |
| 本学期讲座视频 | 官方 YouTube 合集为往年版本（见上方 Playlist 链接），留待后续视频下载环节处理 |
