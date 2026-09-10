# Stanford CS229: Machine Learning — 完整资料库

Andrew Ng 经典机器学习课程的完整资料(讲座视频 + 讲义 + 复习笔记 + 作业 + 速查表)。

- **课程主页**: https://cs229.stanford.edu/
- **讲师**: Andrew Ng(Autumn 2018)、Anand Avati(Summer 2019)
- **视频来源**: Stanford Online YouTube 频道
- **下载日期**: 2026-08-23

---

## 目录结构

```
CS229-MachineLearning/
├── README.md                  ← 本文件
├── videos/                    ← 43 个讲座视频(1080p MP4,内嵌中英字幕)
│   ├── 01..20 - ... (Autumn 2018)   ← Andrew Ng 主讲,20 讲
│   └── 01..23 - ... (Summer 2019)   ← Anand Avati 主讲,23 讲(数学更详细)
├── notes/                     ← 19 份官方讲义 PDF(cs229-notes1 ~ notes13 + 决策树/集成/深度学习/反向传播)
├── section/                   ← 11 份讨论课复习资料(线代/概率/凸优化/高斯过程/HMM/评估指标等)
├── materials/                 ← ML-advice.pdf(应用 ML 建议)、ps0.pdf(预备作业)
├── cs229-2018-autumn/         ← 官方 2018 秋季课程仓库(maxim5 镜像:讲义 + 作业 + 解答)
├── cheatsheets-amidi/         ← afshinea/stanford-cs-229 超人气速查表(多语言)
├── assignments/               ← 作业起始代码
├── dl_notes.sh                ← 讲义下载脚本(可重跑)
└── download_videos.sh         ← 视频下载脚本(可重跑)
```

---

## 两季视频对比

| 季次 | 讲师 | 讲数 | 特点 |
|------|------|------|------|
| **Autumn 2018** | Andrew Ng | 20 | 最经典版本,Ng 亲授,偏直觉与应用 |
| **Summer 2019** | Anand Avati | 23 | 数学推导更完整,含矩阵微积分、ELBO、VAE、最大熵等补充 |

> 建议:以 **Autumn 2018 Andrew Ng** 为主线学习;遇到数学细节想深入时,对照 **Summer 2019** 对应主题。

---

## 官方讲义(notes/,19 份)

| 文件 | 主题 |
|------|------|
| cs229-notes1 | 线性回归、最小二乘、Logistic 回归、感知机、牛顿法 |
| cs229-notes2 | 生成学习算法(GDA、朴素贝叶斯) |
| cs229-notes3 | 支持向量机(SVM)、核方法 |
| cs229-notes4 | 学习理论(偏差/方差、VC 维、一致收敛) |
| cs229-notes5 | 正则化与模型选择 |
| cs229-notes6 | 感知机与大间隔分类器 |
| cs229-notes7a/7b | K-means、混合高斯、EM 算法 |
| cs229-notes8 | 因子分析 |
| cs229-notes9 | 主成分分析(PCA) |
| cs229-notes10 | 独立成分分析(ICA) |
| cs229-notes11 | 强化学习与控制 |
| cs229-notes12 | 线性二次调节(LQR、LQG) |
| cs229-notes13 | 策略梯度(REINFORCE) |
| cs229-notes-dt | 决策树 |
| cs229-notes-ensemble | 集成方法(Bagging、Boosting) |
| cs229-notes-deep_learning | 深度学习 |
| cs229-notes-backprop | 反向传播 |

## 讨论课复习(section/,11 份)

线性代数复习、概率论复习、凸优化(2 份)、隐马尔可夫模型(HMM)、高斯分布(2 份)、高斯过程、评估指标、误差分析。

---

## 使用建议

1. **看视频**:`videos/` 下 1080p MP4,已内嵌英文 + 中文简体字幕,播放器可切换。
2. **配合讲义**:每看完一讲,读 `notes/` 对应编号的 PDF 巩固推导。
3. **补数学**:线代/概率/凸优化基础薄弱,先看 `section/` 复习资料。
4. **做题**:`materials/ps0.pdf` 是预备作业;`cs229-2018-autumn/` 里有全部 problem sets 及解答。
5. **速查**:`cheatsheets-amidi/` 是 Afshine Amidi 制作的知识点速查表,考前/复习极好用。

---

*本资料库仅供个人学习使用,版权归 Stanford University 及课程讲师所有。*
