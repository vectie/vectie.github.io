# MoonSuite 网站内容与设计交接 / Site Handover

## 合并结论

本版以 MoonBit + Rabbita 网站为唯一生产实现，吸收 `Kimi_Agent_MoonSuite Promo Site` 中更强的叙事、产品哲学和可信图片资产。没有迁移到 React，也没有把两套前端并置。

| 比较项 | 采用版本 | 原因 |
| --- | --- | --- |
| 技术架构 | 现有 MoonBit + Rabbita | 与产品技术主张一致，双语、路由、交互闭环和静态部署已完整验证 |
| 首页主标题 | Kimi 方向 | “软件的最高目的，是自举自进化”比“让软件成为组织”更锋利，也更贴合核心论点 |
| 辅助论点 | 合并 | “让软件成为组织”保留为第二层 manifesto，形成“目的 → 组织结果”的叙事顺序 |
| 产品一句话哲学 | Kimi 版本为主 | 句子更短、更容易被记住；英文由本版重新对应撰写 |
| 产品正文 | 现有版本为底 | 现有版本有中英双语、边界声明、OPC 作用和成熟度说明，避免只宣传不交代证据 |
| 图片 | Kimi 的三张可信资产 | MoonGate、MoonMoon 是真实运行界面；Moontown 是仓库真实资产和布局的组合画面 |
| 导航与页面组织 | 合并 | 增加协作流与 ZPC 入口，同时保留中国市场计划 |

## 当前主线文案

**中文：** MoonSuite 是为 One-Person Company 构建的 Agent OS。智能体感知现有软件，决定调用还是扩展；超出预期的能力被固化，低于预期的改变被回滚，结果进入三差记忆。闭环让软件自举自进化，也让软件定义的组织获得同样能力。

**English:** MoonSuite is the Agent OS for the One-Person Company. Agents sense existing software, choose whether to use or extend it, preserve capability that exceeds expectations, revert changes that do not, and write the result into three-gap memory. The loop lets software—and the software-defined organization—bootstrap and evolve itself.

## 图片证据与边界

- `shots/moongate.png`：真实 MoonGate operator console 截图。画面中的 `control bootstrap returned 403` 被保留，不作修饰；这既是产品证据，也是首启体验待修问题。
- `shots/moonmoon.png`：MoonBit 命令生成的 Shackleton Rim / First Trusted Square 任务检查界面。它证明任务级仿真与路线证据面，不代表真实月面部署已经发生。
- `shots/moontown.png`：使用 Moontown 仓库中的真实建筑、居民、异常信号和布局坐标组合。它不是一次生产运行抓屏，因此页面明确标注 `REPOSITORY ASSETS · SCENE COMPOSITION`。
- 其余产品继续使用特色视窗。特色视窗表达产品契约和能力重点，不冒充真实运行截图。

## 距离宣传承诺的差距

1. MoonGate 首启仍可能出现 control bootstrap 403，需要把零配置首跑做成可复现的成功路径。
2. 多个 Moon 仓库需要锁定 MoonBit 工具链和依赖版本，并以 CI badge 给出可构建证据。
3. MoonClaw、MoonDesk、MoonFlow 等产品仍缺少可公开复用的真实界面截图或 demo fixture。
4. MoonProj 尚无可验证的公开仓库；MoonFind 仍是未上线愿景。网站保留建设中 / 愿景标签。
5. 真实生产级 ZPC 需要长期运行、备份恢复、权限、审计和异常接管证据；目前是明确方向，不是已完成声明。

## English handover summary

The production site remains MoonBit + Rabbita. The merge adopts Kimi’s sharper hero thesis, memorable product philosophies, and three credible visual assets, while retaining the existing site’s bilingual copy, interactive loop, China-market plan, maturity labels, and evidence boundaries. Product copy should continue to distinguish a real capture, a repository-asset composition, a feature view, and a future claim.

Build and verification:

```bash
pnpm install
moon update
pnpm test
pnpm dev
```

The production artifact is generated into `dist/client` and synchronized to the repository root for GitHub Pages.
