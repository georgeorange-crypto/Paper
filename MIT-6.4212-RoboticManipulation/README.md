# MIT 6.4210 / 6.4212 机器人操作（Robotic Manipulation）

- **课程名称**：Robotic Manipulation: Perception, Planning, and Control（机器人操作：感知、规划与控制）
- **开课学校**：麻省理工学院（MIT）
- **授课教师**：Russ Tedrake
- **官方网站**：https://manipulation.csail.mit.edu/ （最新学期：Fall 2026，https://manipulation.csail.mit.edu/Fall2026/ ）
- **YouTube 播放列表**：https://youtube.com/playlist?list=PL3940DD956CDF0622 （本批次不下载视频）
- **课程形式**：以在线电子教材为核心，配合 Drake / Deepnote 上的编程练习（psets）。

## 已下载内容

| 目录 | 内容 | 说明 |
|------|------|------|
| `book/manipulation_book.pdf` | 全书 PDF（由 HTML 自动生成） | 来自 GitHub Releases，约 14 MB |
| `chapters/` | 全部教材章节 HTML（第 1~12 章 + 附录 A~E，共 17 个） | intro, robot, pick, pose, clutter, trajectories, mobile, force, segmentation, deep_perception, rl, tactile, spatial, drake, environments, station, misc |
| `repo/` | 官方代码仓库（含每章 `book/*/exercises` 编程练习 notebook） | `git clone` 自 https://github.com/RussTedrake/manipulation ，约 95 个 .ipynb，13 个 exercises 目录 |

## 章节目录
1. Introduction / 2. Let's get you a robot / 3. Basic Pick and Place / 4. Geometric Pose Estimation / 5. Bin Picking / 6. Motion Planning / 7. Mobile Manipulation / 8. Manipulator Control / 9. Object Detection and Segmentation / 10. Deep Perception for Manipulation / 11. Reinforcement Learning / 12. Soft Robots and Tactile Sensing

## 缺失 / 说明
- **习题（psets）以 GitHub 仓库为准**：官方课表的 pset 链接指向 Deepnote 交互环境，练习源码等价存放于 `repo/book/*/exercises/`（每章的 `.ipynb`）。
- 官方不单独发布幻灯片 PDF，讲课直接使用在线教材页面（已存于 `chapters/`）。
- 全书 PDF 的 Release 版本为 v2022.0（作者以在线 HTML 版为主，PDF 为自动生成的历史快照）。
