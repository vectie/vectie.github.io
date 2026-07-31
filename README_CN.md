# Moonsuite — MoonBit + Rabbita

Vectie 官网现已迁移为完整的 Moonsuite 双语产品网站，主线为 **Agent OS → OPC OS → ZPC**。应用模型、消息更新、语言切换、交互式闭环、12 个产品分页与中国市场计划全部使用 MoonBit 编写，并由 Rabbita 渲染。

```bash
pnpm install
moon update
pnpm test
pnpm dev
```

可编辑 HTML 入口位于 `site/`。`pnpm build` 会生成 `dist/client`，并将编译产物同步到仓库根目录以兼容当前的分支式 [GitHub Pages](https://vectie.github.io)；Cloudflare 部署作为独立流水线保留。

## 之前的组织介绍

[![github](https://badgen.net/badge/>>/GitHub/cyan)](https://github.com/vectie)
[![gitee](https://badgen.net/badge/>>/Gitee/cyan)](https://gitee.com/vectie)
[![vectie-open-source-organization](https://badgen.net/badge/organization/join%20us/cyan)](#如何加入)
[![license](https://badgen.net/github/license/vectie/vectie.github.io?color=green)](https://github.com/vectie/vectie.github.io/blob/main/LICENSE)

welcome to [Vectie](https://github.com/vectie) 向量贴贴

这已经不是单个 repo 的故事，而是一整套 Moon Suite 的故事。

从 durable knowledge 到 runtime execution，从 town orchestration 到 desktop operator，从 observability 到 robotics，再到 lunar world model，我们的兴趣范围就是故意做得很宽，而且这些方向已经开始互相接上。更干净的总目标是：**一个 agentic inter-planet system**。

## 站点

https://vectie.com

## Moon Suite

产品线现在按照职责分类，不再把每个 `moon*` 工作树都当成独立应用。
详见[权威产品目录](docs/MOONSUITE_PRODUCT_CATALOG.md)和
[文档标准](docs/DOCUMENTATION_STANDARD.md)。

| 层级 | 组件 | 职责 |
| --- | --- | --- |
| 平台 | MoonLib、MoonClaw、MoonFlow、MoonGate、MoonBook | 共享契约、唯一 agent runtime、持久化编排、provider 控制与已接受知识 |
| 人类控制面 | MoonDesk | 工作区、审阅、应用托管、服务状态与组合画布 |
| 领域产品/Pack | MoonProj、MoonCast、MoonFish、MoonFind、MoonMold、MoonRobo、MoonMoon、MoonTown | 公司经营、媒体、金融、科研、空间模型、机器人、仿真与 civic 工作 |
| 支撑组件 | MoonEdit、MoonLeaf、MoonVis、Lepusa、Rabbita/Bunnia | 编辑、OOXML、视觉系统、桌面与 UI 框架 |
| 孵化 | MoonChat | 可移植会话契约；目前不是独立应用 |

## 产品视角

- MoonClaw 是唯一 agent runtime；MoonFlow 不是第二套 agent。
- 领域策略只留在所属产品或 pack。
- MoonDesk 画布只能执行已安装、健康且 schema 兼容的 operation。
- MoonBook 负责 accepted knowledge 与 Bookkeeper 三差学习。
- MoonStat 已并入 MoonGate；MoonMini 是 Bunnia 框架工作树，不是产品。
- 当前整体仍以 local alpha 为主；fixture、provider port、截图证据与真实生产/商业证明必须分开标注。

## 如何加入

> _要走得快，就一个人走；要走得远，就一起走。_

参与开源项目，对于个人的成长是有很大帮助的，相信很多小伙伴都有体会。

Vectie 是一个关注 agents、LLM 和 robotics 的开源组织。如果你对这些方向感兴趣，欢迎加入我们，一起做代码、实验、文档、工具和系统，顺手也可以贡献一点幽默感。

- 直接在 [Vectie Discussions](https://github.com/orgs/vectie/discussions) 下面留言，简单介绍你对 agents、LLM、robotics 或相关基础设施的兴趣。

默认情况下，你加入后在 GitHub 上的 Vectie 组织成员身份是隐藏的。如果你希望在个人主页展示该组织，可以在 https://github.com/orgs/vectie/people 把 `private` 改成 `public`。

新成员通常从 fork 项目、提交 PR、熟悉协作流程开始。持续稳定地做出高质量贡献后，可以进一步参与项目协作。

如果你还不熟悉 GitHub 开源协作流程，可以参考[这篇文章](https://github.com/firstcontributions/first-contributions/blob/main/translations/README.zh-cn.md)。

## 核心成员

<p>
  <a href="https://github.com/jiaanguo"><img src="https://github.com/jiaanguo.png?size=96" width="64" height="64" alt="jiaanguo" /></a>
  <a href="https://github.com/giantclaw"><img src="https://github.com/giantclaw.png?size=96" width="64" height="64" alt="giantclaw" /></a>
  <a href="https://github.com/zhangsj0608"><img src="https://github.com/zhangsj0608.png?size=96" width="64" height="64" alt="zhangsj0608" /></a>
</p>

- [jiaanguo](https://github.com/jiaanguo)
- [giantclaw](https://github.com/giantclaw)
- [zhangsj0608](https://github.com/zhangsj0608)

## 贡献者列表

感谢所有为 Vectie 贡献代码、文档、想法和评审的朋友。

<a href="https://github.com/vectie">
  <img src="https://api.vaunt.dev/v1/github/entities/vectie/contributors?limit=24&format=svg" alt="Vectie contributors" width="420" />
</a>
