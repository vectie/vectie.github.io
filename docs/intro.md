# 介绍

[![github](https://badgen.net/badge/>>/GitHub/cyan)](https://github.com/vectie)
[![gitee](https://badgen.net/badge/>>/Gitee/cyan)](https://gitee.com/vectie)
[![vectie-open-source-organization](https://badgen.net/badge/organization/join%20us/cyan)](#如何加入)
[![license](https://badgen.net/github/license/vectie/vectie.github.io?color=green)](https://github.com/vectie/vectie.github.io/blob/main/LICENSE)

welcome to [Vectie](https://github.com/vectie) 向量贴贴

我们在做的不是单个项目，而是一整套 Moon Suite。

从 durable knowledge 到 runtime，从 town orchestration 到 desktop shell，从 observability 到 robotics，再到 lunar world model，我们的兴趣范围很宽，而且这些方向已经开始互相接上。更干净的总目标可以直接说成一句话：<strong>一个 agentic inter-planet system</strong>。

## 站点

https://vectie.com

<img class="moon-hero-image" src="/generated/moon-suite-hero.svg" alt="Moon Suite hero illustration">

## Moon Suite

目前 Vectie 的公开产品线已经不只是“一本书、一只爪子、一整个镇子，再加上一张桌面”，而是一套完整的 Moon 产品矩阵。

| # | 项目 | 描述 | 热度 |
| --- | --- | --- | --- |
| 1   | [moonbook](https://github.com/vectie/moonbook) | MoonBit 原生 mdBook 实现，包含静态渲染、本地服务、watch 工作流和持久化 wiki 工作区。 | ![](https://badgen.net/github/stars/vectie/moonbook) <br>![](https://badgen.net/github/forks/vectie/moonbook) |
| 2   | [moonclaw](https://github.com/vectie/moonclaw) | MoonBit 原生 agent 运行时，包含 gateway、memory、作业编排和 ACP 远程 agent 控制。 | ![](https://badgen.net/github/stars/vectie/moonclaw) <br>![](https://badgen.net/github/forks/vectie/moonclaw) |
| 3   | [moontown](https://github.com/vectie/moontown) | 位于多个 moonbook 工作区和 moonclaw worker 之上的 town 级编排层，提供路由、隔离规则、持久化 town 状态，以及房间式 dashboard。 | ![](https://badgen.net/github/stars/vectie/moontown) <br>![](https://badgen.net/github/forks/vectie/moontown) |
| 4   | [moondesk](https://github.com/vectie/moondesk) | Moon 系统的人类桌面伙伴，用来查看 MoonBook 工作区、审阅 MoonClaw 产物、向 Moontown 提交任务，以及在不切终端的情况下管理文件。 | ![](https://badgen.net/github/stars/vectie/moondesk) <br>![](https://badgen.net/github/forks/vectie/moondesk) |
| 5   | [moonstat](https://github.com/vectie/moonstat) | Moon Suite 的本地代理、统计与可观测性网关，负责 provider 控制、usage、metrics 和 suite status。 | ![](https://badgen.net/github/stars/vectie/moonstat) <br>![](https://badgen.net/github/forks/vectie/moonstat) |
| 6   | [moonrobo](https://github.com/vectie/moonrobo) | 面向物理世界的机器人接口层，负责桥接、安全边界、telemetry evidence、proof session 和 operator control。 | ![](https://badgen.net/github/stars/vectie/moonrobo) <br>![](https://badgen.net/github/forks/vectie/moonrobo) |
| 7   | [moonmoon](https://github.com/vectie/moonmoon) | MoonBit 原生月面地形与任务模型，提供 lunar terrain、mission scoring、trusted dossier 和 live 3D view。 | ![](https://badgen.net/github/stars/vectie/moonmoon) <br>![](https://badgen.net/github/forks/vectie/moonmoon) |

<div class="moon-section">
  <span class="moon-kicker">产品视角</span>
  <h2>我们在卖什么</h2>
  <p class="moon-lead">
    这不是一个“某某工具集合页”，而是一个围绕知识、执行、调度、桌面、观测、机器人与世界模型逐步成型的 MoonBit-native 产品体系。
  </p>
  <div class="moon-grid">
    <div class="moon-card">
      <h3>知识与记忆</h3>
      <p>MoonBook 负责 durable workspace、wiki、generated projection、graph 与 state contract。</p>
    </div>
    <div class="moon-card">
      <h3>执行与推理</h3>
      <p>MoonClaw 负责 bounded runtime、jobs、tool use、MoonCode session 与 artifact lifecycle。</p>
    </div>
    <div class="moon-card">
      <h3>调度与治理</h3>
      <p>Moontown 负责 standing goals、mayor/keeper supervision、cross-book routing 与 civic orchestration。</p>
    </div>
    <div class="moon-card">
      <h3>人机与现场</h3>
      <p>Moondesk 给人类一个桌面入口，Moonrobo 给机器人一个安全边界，Moonstat 给整套系统一个可观测面。</p>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">更大的目标</span>
  <h2>为什么是 inter-planet</h2>
  <p class="moon-lead">
    因为这套系统不只服务于数字内容整理或本地 agent 调度。它正在延伸到机器人接口、物理执行证据、月面环境模型、任务推演与更长期的空间作业现场。Moon Suite 的产品边界天然比“AI 工具箱”更大。
  </p>
  <p class="moon-lead">
    如果要把这件事讲得足够干净，我们希望外界记住的不是七个仓库名，而是这句话：<strong>An agentic inter-planet system.</strong>
  </p>
</div>

<div class="moon-section">
  <span class="moon-kicker">兴趣范围</span>
  <h2>我们的 broad view</h2>
  <ul class="moon-list">
    <li><strong>Agents / LLM：</strong> runtime、sessions、tool contracts、operator-facing MoonCode</li>
    <li><strong>Knowledge / Memory：</strong> executable books、wiki、evidence、bundle、graph、state</li>
    <li><strong>Observability：</strong> local proxy、provider control、usage、metrics、suite status</li>
    <li><strong>Robotics：</strong> safety gate、bridge sidecar、telemetry、proof session、teleoperation</li>
    <li><strong>World Models：</strong> lunar terrain、mission scoring、trusted dossier、3D inspection</li>
  </ul>
</div>

<div class="moon-section">
  <span class="moon-kicker">产品地图</span>
  <h2>Moon Suite 怎么拼起来</h2>
  <img class="moon-diagram-image" src="/generated/moon-suite-map.svg" alt="Moon Suite product map">
</div>

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
