# 纽约大学 NYU DS-GA 1008 深度学习（Deep Learning）

- **课程名称**：NYU DS-GA 1008 "Deep Learning"
- **主讲教师**：Yann LeCun（讲授）与 Alfredo Canziani（实践 / practicum）
- **开课学期**：Spring 2021（NYU-DLSP21，本镜像主版本）；并含 Spring 2020（NYU-DLSP20）配套代码
- **官方主页**：https://atcold.github.io/NYU-DLSP21/
- **课程门户**：https://cds.nyu.edu/deep-learning/
- **GitHub 仓库**：
  - https://github.com/Atcold/NYU-DLSP21 （2021 版，已 clone）
  - https://github.com/Atcold/NYU-DLSP20 （2020 版，含全部 Jupyter notebook 与部分幻灯片 PDF，已 clone）
- **YouTube 播放列表**：https://www.youtube.com/playlist?list=PLLHTzKZzVU9e6xUfG10TkTWApKSZCzuBI （2021 版，本次未下载视频）

## 说明
课程幻灯片托管在 Google Drive（可访问），已全部下载；课堂笔记（notes）、Jupyter notebook 实践代码通过官方 GitHub 仓库 clone 获取。本课程为完整镜像（幻灯片 + 笔记 + 两个官方代码仓库）。

## 已下载文件（共约 1439 个文件，约 722 MB）

### slides/（讲义幻灯片，22 个 PDF，来自 Google Drive）
History & resources、Gradient descent & backprop、Modules & architectures、Recurrent & convolutional nets、ConvNets in practice、Energy-Based Models (I–V)、Unsupervised learning & autoencoders、Joint Embedding Methods (I/II)、Attention & Transformer、Graph Transformer nets、Graph Convolutional Nets、Planning & control、SSL for vision、Low-resource machine translation、Optimisation (II)、Lagrangian backprop & final project Q&A
> 注：`06_convnets_practice.pdf` 体积较大（约 185 MB），为含高清插图的原始讲义，已校验为有效 PDF。

### notes/（课堂笔记，5 个 PDF）
Recurrent & convolutional、ConvNets in practice、Energy-Based Models (II)、Optimisation (II)、Lagrangian backprop

### NYU-DLSP21/（2021 版官方仓库，git clone）
含 4 个 notebook（04 spiral classification、10 autoencoder、11 VAE、17 optimal control）、网站源码（docs/）、资源（res/）

### NYU-DLSP20/（2020 版官方仓库，git clone）
含 **全部 17 个 Jupyter notebook 实践代码**（practicum：空间拉伸、spiral 分类、回归、convnet、序列分类、echo data、transformer、gated GCN、truck backer-upper 等）与 **14 个幻灯片 PDF**（slides/ 目录：Spiral classification、CNN、RNN、EBM、GCN、Controller learning 等）

## 缺失 / 未包含项
- **视频**：按要求未下载（官方 YouTube 播放列表见上）。
- **作业（Homework 1–3）**：托管为 Google Drive **文件夹**（非单文件），需浏览器 / Drive API 才能枚举下载，curl 无法直接抓取。链接：
  - HW1（backprop）：https://drive.google.com/drive/folders/1g-uQNEi_NJyELGRMrJGXXxmARDabcXFd
  - HW2（RNN & CNN）：https://drive.google.com/drive/folders/1or1YiW0fFiZGEYy6b4EOEDgRPr0GQX0i
  - HW3（结构化预测）：https://drive.google.com/drive/folders/1zGy_SnMBqaoS7_dHRmKiOFtqNV1jJJb6
- 少量幻灯片（如 EBM 部分、Truck Backer-Upper）在官网直接指向 DLSP20 仓库中的 PDF，已随仓库 clone 一并包含在 `NYU-DLSP20/slides/`。
