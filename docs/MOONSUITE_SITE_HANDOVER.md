# MoonSuite 网站内容与设计交接 / Site Handover

## 合并结论

本版以 MoonBit + Rabbita 网站为唯一生产实现，吸收 `Kimi_Agent_MoonSuite Promo Site` 中更强的叙事、产品哲学和可信图片资产。没有迁移到 React，也没有把两套前端并置。

| 比较项 | 采用版本 | 原因 |
| --- | --- | --- |
| 技术架构 | 现有 MoonBit + Rabbita | 与产品技术主张一致，双语、路由、交互闭环和静态部署已完整验证 |
| 首页主标题 | 所有者确认方向 | “软件自我进化，组织随之生长。”把产品能力与组织结果放进同一条因果链；英文为 “Software that evolves itself—and the organization with it.” |
| 辅助论点 | 合并 | “让软件成为组织”保留为第二层 manifesto，形成“目的 → 组织结果”的叙事顺序 |
| 产品一句话哲学 | 所有者确认的混合版本 | 最终选择为 `Claw-B, Book-C, Town-B, Flow-C, Desk-A, Gate-A, Proj-C, Robo-C, Moon-A, Mold-A, Cast-C, Find-A`；完整决策记录见 `docs/PHILOSOPHY_OPTIONS.md` |
| 产品正文 | 现有版本为底 | 现有版本有中英双语、边界声明、OPC 作用和成熟度说明，避免只宣传不交代证据 |
| 图片 | Kimi 资产 + 本地真实构建取证 | 已从 6 个本地产品构建补图；目前 12 款产品中 9 款有 source-captured 证据，3 款使用明确标注的证据视图 |
| 导航与页面组织 | 合并 | 增加协作流与 ZPC 入口，同时保留中国市场计划 |

## 当前主线文案

**中文：** MoonSuite 是为 One-Person Company 构建的 Agent OS。智能体感知现有软件，决定调用还是扩展；超出预期的能力被固化，低于预期的改变被回滚，结果进入三差记忆。闭环让软件自举自进化，也让软件定义的组织获得同样能力。

**English:** MoonSuite is the Agent OS for the One-Person Company. Agents sense existing software, choose whether to use or extend it, preserve capability that exceeds expectations, revert changes that do not, and write the result into three-gap memory. The loop lets software—and the software-defined organization—bootstrap and evolve itself.

## 图片证据与边界

- `shots/moonclaw.png`：真实编译的 MoonClaw 操作台静态状态。画面明确显示本地网关未连接，不作为生产运行证明。
- `shots/moonbook.png`：真实 MoonBook 工作区生成的站点投影，证明 executable book 的发布面，不把它描述为 operator console。
- `shots/moongate.png`：真实 MoonGate operator console 截图。画面中的 `control bootstrap returned 403` 被保留，不作修饰；这既是产品证据，也是首启体验待修问题。
- `shots/moondesk.png`：MoonDesk 连接本地工作区后的真实 Rabbita 桌面；可见 10 个 MoonBook、文件目录和 AI 权限边界。它直接补上 Kimi 交接中点名的 GUI 截图缺口。
- `shots/moonproj.png`：本机 MoonBit + Rabbita / Warren 服务提供的真实 ERP 登录壳。它证明本地实现存在，不等同于公开仓库或生产切换证明。
- `shots/moonrobo.png`：本地原生服务从真实 RoboBook / URDF 加载的只读驾驶舱；画面可见 50/50 STL 网格、遥测映射和安全门。
- `shots/mooncast.png`：真实编译的 Studio 静态界面；命名人工权限、G0 场景和预算边界可见，同时保留未连接本地 API 的错误状态。
- `shots/moonmoon.png`：MoonBit 命令生成的 Shackleton Rim / First Trusted Square 任务检查界面。它证明任务级仿真与路线证据面，不代表真实月面部署已经发生。
- `shots/moontown.png`：使用 Moontown 仓库中的真实建筑、居民、异常信号和布局坐标组合。它不是一次生产运行抓屏，因此页面明确标注 `REPOSITORY ASSETS · SCENE COMPOSITION`。
- MoonFlow 继续使用“编排证据视图”：仓库本身没有独立 UI，伪造 GUI 会误导受众。
- MoonMold 继续使用“工程证据视图”：本机没有独立产品仓库可供取证。
- MoonFind 继续使用“研发方向视图”：产品尚未上线。

## 距离宣传承诺的差距

1. MoonGate 首启仍可能出现 control bootstrap 403，需要把零配置首跑做成可复现的成功路径。
2. MoonClaw 与 MoonCast 已有真实编译 UI，但当前公开截图仍是静态 / 未接 API 状态；需要发布一套可复现的 demo fixture。
3. MoonFlow 没有独立 UI；如要宣传“截图”，应该做真实事件流 / DAG 检查器，而不是合成控制台。
4. MoonMold 本机缺少独立仓库；在补仓库、README、工程样例与转换收据之前，只能宣传经过边界标注的方向。
5. MoonProj 本机实现与 Rabbita 登录壳存在，但尚无可验证的公开仓库；MoonFind 仍是未上线愿景。网站保留建设中 / 愿景标签。
6. 多个 Moon 仓库仍需要锁定 MoonBit 工具链和依赖版本，并以 CI badge 给出持续可构建证据。
7. 真实生产级 ZPC 需要长期运行、备份恢复、权限、审计和异常接管证据；目前是明确方向，不是已完成声明。

## English handover summary

The production site remains MoonBit + Rabbita. The merge adopts Kimi’s sharper hero thesis and visual direction while retaining the bilingual copy, interactive loop, China-market plan, maturity labels, and evidence boundaries. Nine of twelve products now have source-captured evidence; MoonFlow, MoonMold, and MoonFind retain explicitly labeled evidence views because a fabricated UI would overstate what exists. The owner-confirmed philosophy mix is recorded in `docs/PHILOSOPHY_OPTIONS.md` and applied as paired Chinese-English copy in the product data.

Build and verification:

```bash
pnpm install
moon update
pnpm test
pnpm dev
```

The production artifact is generated into `dist/client` and synchronized to the repository root for GitHub Pages.
