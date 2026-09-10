# MIT 6.8210 / 6.832 欠驱动机器人学（Underactuated Robotics）

- **课程名称**：Underactuated Robotics: Algorithms for Walking, Running, Swimming, Flying, and Manipulation（欠驱动机器人学）
- **开课学校**：麻省理工学院（MIT）
- **授课教师**：Russ Tedrake
- **官方网站**：https://underactuated.csail.mit.edu/ （示例学期：Spring 2024，https://underactuated.csail.mit.edu/Spring2024/ ）
- **YouTube 播放列表**：https://www.youtube.com/playlist?list=PLkx8KyIQkMfU5szP43GlE_S1QGSPQfL9s （本批次不下载视频）
- **课程形式**：以在线电子教材为核心，配合 Drake / Deepnote 上的编程练习（psets）。

## 已下载内容

| 目录 | 内容 | 说明 |
|------|------|------|
| `book/underactuated_book.pdf` | 全书 PDF | 来自 GitHub Releases（2023-03-24），约 5.6 MB |
| `chapters/` | 全部教材章节 HTML（第 1~21 章 + 附录 A~E，共 26 个） | intro, pend, acrobot, simple_legs, humanoids, stochastic, dp, lqr, lyapunov, trajopt, policy_search, planning, robust, feedback_motion_planning, output_feedback, limit_cycles, contact, sysid, state_estimation, rl_policy_search, imitation + drake/multibody/optimization/playbook/misc |
| `repo/` | 官方代码仓库（含每章 `book/*/exercises` 编程练习 notebook） | `git clone` 自 https://github.com/RussTedrake/underactuated ，约 78 个 .ipynb |

## 章节目录（部分）
1. Fully vs Underactuated / 2. Simple Pendulum / 3. Acrobots, Cart-Poles, Quadrotors / 4. Walking & Running / 5. Legged Robots / 6. Stochasticity / 7. Dynamic Programming / 8. LQR / 9. Lyapunov / 10. Trajectory Optimization / 11. Policy Search / 12. Motion Planning / 13. Robust Control / 14. Feedback Motion Planning / 15. Output Feedback / 16. Limit Cycles / 17. Contact / 18. System ID / 19. State Estimation / 20. Model-Free Policy Search / 21. Imitation Learning

## 缺失 / 说明
- **习题（psets）以 GitHub 仓库为准**：官方课表的 pset 链接指向 Deepnote 交互环境，练习源码等价存放于 `repo/book/*/exercises/`（每章的 `.ipynb`）。
- 官方不单独发布幻灯片 PDF，讲课直接使用在线教材页面（已存于 `chapters/`）。
