# MoonSuite 网站内容与设计交接 / Site Handover

> **Superseded status note — 2026-07-30:** Visual decisions below remain useful,
> but repository availability, product maturity and runtime claims are now
> governed by [MOONSUITE_PRODUCT_CATALOG.md](MOONSUITE_PRODUCT_CATALOG.md) and
> [DOCUMENTATION_STANDARD.md](DOCUMENTATION_STANDARD.md). In particular,
> MoonMold and MoonFind now have local repositories, while a repository or
> screenshot still does not prove live-provider or commercial readiness.

## 合并结论

本版以 `Kimi_Agent_MoonSuite Promo Site` 为**可见设计与页面构图的唯一基准**，并将它完整翻译到 MoonBit + Rabbita 生产实现。技术栈没有迁移到 React，也没有把两套前端并置；Kimi 决定用户看到的空间、层级、字体、卡片和色彩，MoonBit + Rabbita 负责生成与交互。

| 比较项 | 采用版本 | 原因 |
| --- | --- | --- |
| 技术架构 | 现有 MoonBit + Rabbita | 与产品技术主张一致，双语、路由、交互闭环和静态部署已完整验证 |
| 可见设计基础 | Kimi 完整视觉移植 | 星空与轨道首屏、Space Grotesk 主层级、暗色连续表面、圆角产品网格、琥珀 / 淡紫 / 绿色语义色均以 Kimi 为源；移植实现集中在 `app/kimi-foundation.css` |
| 默认语言 | English | 无 `?lang=` 参数时使用英文；中文继续通过 `?lang=zh` 与语言按钮完整保留 |
| 首页主标题 | 所有者确认方向 | “软件自我进化，组织随之生长。”把产品能力与组织结果放进同一条因果链；英文为 “Software that evolves itself—and the organization with it.” |
| 辅助论点 | 合并 | “让软件成为组织”保留为第二层 manifesto，形成“目的 → 组织结果”的叙事顺序 |
| 产品一句话哲学 | 所有者确认的混合版本 | 最终选择为 `Claw-B, Book-C, Town-B, Flow-C, Desk-A, Gate-A, Proj-C, Robo-C, Moon-A, Mold-A, Cast-C, Find-A`；完整决策记录见 `docs/PHILOSOPHY_OPTIONS.md` |
| 产品正文 | 现有版本为底 | 现有版本有中英双语、边界声明、OPC 作用和成熟度说明，避免只宣传不交代证据 |
| 图片 | Kimi 资产 + 本地真实构建取证 | 此交接版本的 12-card 布局中，9 款使用当时的 source-captured 证据，3 款使用明确标注的证据视图；这是一条历史设计记录，不是当前 readiness 计数 |
| 导航与页面组织 | Kimi 为底，合并增强 | 保留 Kimi 的紧凑胶囊导航和主叙事顺序，增加进阶闭环、Logo 系统、协作流与中国市场计划 |
| 自进化闭环 | 可交互的概念演示 | 用一个 OPC 周报任务展示 `research_brief@v12 → v13-rc1 → v13`，同时展示晋级与回滚分支，避免只给出抽象结论 |
| 产品 Logo | Lunar Glyphs / 月相字形 | 新增 MoonSuite 母标与 12 枚产品子标；统一采用缺口月轨、验证信号和职责字形，规范见 `docs/LOGO_SYSTEM.md` |

## 当前主线文案

**中文：** MoonSuite 是为 One-Person Company 构建的 Agent OS。智能体感知现有软件，决定调用还是扩展；超出预期的能力被固化，低于预期的改变被回滚，结果进入三差记忆。闭环让软件自举自进化，也让软件定义的组织获得同样能力。

**English:** MoonSuite is the Agent OS for the One-Person Company. Agents sense existing software, choose whether to use or extend it, preserve capability that exceeds expectations, revert changes that do not, and write the result into three-gap memory. The loop lets software—and the software-defined organization—bootstrap and evolve itself.

## 为什么是“自进化” / Why it is self-evolving

首页闭环现在用一个明确标注为概念演示的 OPC 任务，而不是虚构生产遥测：创始人要求系统每周把客户访谈生成带引用的市场简报，且证据置信度必须达到门槛。系统从 `research_brief@v12` 开始，感知到“无法保存矛盾证据”的能力缺口；它复用四项现有能力，只为缺失部分生成隔离候选 `v13-rc1`；随后按事先声明的引用、矛盾处理、权限和评分契约验收。

通过验收时，候选代码、测试、执行证据和记忆一起晋级为 `research_brief@v13`，并成为下周任务的基线。未通过时，系统恢复 `v12`，不晋级候选代码，但保留失败证据和能力缺口。关键不是一次任务分数提高，而是系统下一次的可行动边界发生了可验证、可复用、可回滚的改变。

The homepage loop now uses an explicitly labeled concept demo rather than invented production telemetry. It begins with `research_brief@v12`, detects a missing contradiction ledger, reuses four existing capabilities, creates only the missing capability as isolated candidate `v13-rc1`, and evaluates it against a predeclared evidence and authority contract.

On pass, candidate code, tests, execution evidence, and memory are promoted together as `research_brief@v13`, which becomes the next week's baseline. On failure, the system restores `v12`, refuses to promote the candidate, and retains the failed evidence gap. That persistent change to the system's future action space—rather than a better one-off answer—is the self-evolution claim.

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
- MoonMold 已有独立 pack 仓库与工程样例，但还没有独立 Rabbita 产品 UI；现有“工程证据视图”不应被描述为真实 operator 截图。
- MoonFind 已有 MoonBit/Rabbita 仓库与本地研究工作区；现有“研发方向视图”应在下一轮网站取证中替换为真实构建截图，同时保持 provider/licensing 边界。

## 距离宣传承诺的差距

1. MoonGate 首启仍可能出现 control bootstrap 403，需要把零配置首跑做成可复现的成功路径。
2. MoonClaw 与 MoonCast 已有真实编译 UI，但当前公开截图仍是静态 / 未接 API 状态；需要发布一套可复现的 demo fixture。
3. MoonFlow 没有独立 UI；如要宣传“截图”，应该做真实事件流 / DAG 检查器，而不是合成控制台。
4. MoonMold 已有 pack、README、工程样例与转换收据；仍缺少可取证的独立 Rabbita UI 与更广泛的 CAD/装配能力。
5. MoonProj 与 MoonFind 均已有公开仓库和本地 Rabbita 路径，但仍分别处于 migration/preview alpha 与 research alpha；网站必须展示成熟度，不能把仓库存在等同于生产上线。
6. 多个 Moon 仓库仍需要锁定 MoonBit 工具链和依赖版本，并以 CI badge 给出持续可构建证据。
7. 真实生产级 ZPC 需要长期运行、备份恢复、权限、审计和异常接管证据；目前是明确方向，不是已完成声明。

## English handover summary

The production site remains MoonBit + Rabbita. The merge adopts Kimi’s sharper hero thesis and visual direction while retaining the bilingual copy, interactive loop, China-market plan, maturity labels, and evidence boundaries. The original twelve-card handover captured nine real source states and three labelled evidence views. MoonMold and MoonFind now have repositories, so the next visual-evidence pass should recapture their current implementations while preserving their explicit alpha/provider limits. MoonFlow remains correctly represented by orchestration evidence rather than a fabricated standalone UI. The owner-confirmed philosophy mix is recorded in `docs/PHILOSOPHY_OPTIONS.md` and applied as paired Chinese-English copy in the product data.

Build and verification:

```bash
pnpm install
moon update
pnpm test
pnpm dev
```

The production artifact is generated into `dist/client` and synchronized to the repository root for GitHub Pages.
