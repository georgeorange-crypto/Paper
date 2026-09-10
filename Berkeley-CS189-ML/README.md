# Berkeley CS189/289A 机器学习（Introduction to Machine Learning）

## 课程简介
- **课程编号**：UC Berkeley CS 189 / 289A
- **课程名称**：Introduction to Machine Learning（机器学习导论）
- **授课教师**：Prof. Jonathan Shewchuk（经典讲义作者）；Fall 2025 由 Prof. Anant Sahai、Prof. Jennifer Listgarten 等主讲
- **官方主页**：https://eecs189.org/ （当前学期镜像自 https://eecs189.org/fa25/ ）
  - 讲义作者 Shewchuk 旧站 `https://people.eecs.berkeley.edu/~jrs/189/` 现已迁移/失效（302→iris 域名后 404），其经典合订讲义 `machlearn.pdf` 目前**官方已不再托管**。
- **YouTube 播放列表**：https://www.youtube.com/playlist?list=PL6O6e8d4U_lZZ-bEWiny3TZh18Wv4iCMz
- **课程内容仓库（GitHub，私有）**：https://github.com/BerkeleyML/fa25-student （需课程授权，公开不可克隆）

## 说明
本目录镜像 Fall 2025 学期公开材料，重点是 **eecs189.org 官方汇总的 111 份历年考试**（span fa17–sp25，题目+解答+速查表），这是 CS189 最有价值的备考资源。讲义部分包含：官方课程 **讲义 PDF（Sahai 讲义 note2–note27）**、每讲的 **Google Slides 幻灯片（导出 PDF）** 与 **带批注讲稿（annotated notes）**。作业为 Google Colab / Drive 交互式 notebook，不以单 PDF 形式发布，故未镜像（见"缺失项"）。

## 下载清单

### exams/ — 历年考试（111 个 PDF，2017–2025 共 23 个学期）
覆盖学期：sp17, fa17, sp18, fa18, sp19, su19, fa19, sp20, su20, fa20, sp21, su21, fa21, sp22, su22, fa22, sp23, su23, fa23, sp24, su24, fa24, sp25。
- 每学期通常含：期中（midterm/mt）、期末（final）、对应**解答（sol/solutions）**，部分含**速查表（reference_sheet）**；fa19 与 sp22 含两次期中。
- 文件命名：`<学期>_<原文件名>.pdf`，例如 `sp25_sp25_final.pdf`、`fa17_fa17midtermsol.pdf`。
- **注意**：其中 17 份为官方备考页中交叉引用的 **Data 100 / DS100 练习卷**（如 `fa23_*ds100*`、`sp24_ds100-*`、`sp19_data100_*`、`sp20_*checkpoint*`），来源同为 eecs189.org 官方 resources 页，保留作为额外练习。

### notes/ — 课程讲义（24 个 PDF）
| 文件 | 说明 |
|------|------|
| note2.pdf – note27.pdf（共 23 份，编号 2–16,18–22,25–27） | 官方课程讲义（Prof. Anant Sahai 版本）：线性回归、特征工程、MLE/MAP、多元高斯、核方法与岭回归、TLS、PCA、CCA、优化与梯度下降、神经网络及训练、生成式/判别式分类、GDA、聚类、SVM、泛化与稳定性、对偶、决策树、Boosting、CNN 等 |
| math4ml.pdf | 机器学习数学基础参考（线代/概率/优化速查，G.W. Thomas） |

### slides/ — 讲义幻灯片 + 带批注讲稿（47 个 PDF）
| 文件 | 说明 |
|------|------|
| lecNN_slides.pdf（23 份） | 各讲课堂幻灯片（由官方 Google Slides 导出 PDF），涵盖 lec01–16、18–22、24、25 |
| lecNN_note.pdf（24 份） | 各讲带批注讲稿（官方 Drive），涵盖 lec01–22、24、25（含 lec17） |

主题依次为：ML 问题框架、数据工具、K-Means 与概率、密度估计与 GMM、线性回归、偏差-方差、逻辑回归、优化与梯度下降、Adam/SGD、神经网络与 PyTorch、反向传播、正则化、CNN、自编码器、Transformer、语言模型、LLM 训练、自监督学习、对比学习与扩散模型。

## 统计
- 历年考试（exams）：111 个 PDF
- 课程讲义（notes）：24 个 PDF
- 幻灯片+讲稿（slides）：47 个 PDF
- **合计：182 个 PDF，约 195 MB**（均已校验为有效 PDF，>10KB）

## 缺失 / 未包含项
- **作业（Homework）**：Fall 2025 的 HW1–HW5 以 Google Colab notebook + Drive 素材文件夹形式发布（非公开 PDF），需课程账号，未镜像。
- **Shewchuk 经典合订讲义 `machlearn.pdf`**：官方站点已下线（jrs 主页迁移后 404），无法从官方渠道获取；已用官方现行的 Sahai 讲义 note2–note27 作为替代。
- **lec17 幻灯片（lec17_slides.pdf）**：该讲 Google Slides 未开放导出权限，导出失败；其带批注讲稿 `lec17_note.pdf` 已包含。
- Discussion worksheet：fa25 讨论材料同样通过 Drive/私有仓库分发，未以 PDF 公开，未镜像。
