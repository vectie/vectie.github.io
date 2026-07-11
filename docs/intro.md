# 介绍

[![github](https://badgen.net/badge/>>/GitHub/cyan)](https://github.com/vectie)
[![gitee](https://badgen.net/badge/>>/Gitee/cyan)](https://gitee.com/vectie)
[![vectie-open-source-organization](https://badgen.net/badge/organization/join%20us/cyan)](#如何加入)
[![license](https://badgen.net/github/license/vectie/vectie.github.io?color=green)](https://github.com/vectie/vectie.github.io/blob/main/LICENSE)

welcome to [Vectie](https://github.com/vectie) 向量贴贴

我们在做的不是单个项目，而是一整套 Moon Suite。

从 durable knowledge 到 runtime，从 town orchestration 到 desktop shell，从 observability 到 robotics，再到 lunar world model，我们的兴趣范围确实很宽。但这个页面不应该只讲“宽”，而要讲清楚每个仓库各自负责什么。更干净的总目标可以直接说成一句话：<strong>一个 agentic inter-planet system</strong>。

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
| 5   | [moongate](https://github.com/vectie/moongate) | Moon Suite 的本地代理、统计与可观测性网关，负责 provider 控制、usage、metrics 和 suite status。 | ![](https://badgen.net/github/stars/vectie/moongate) <br>![](https://badgen.net/github/forks/vectie/moongate) |
| 6   | [moonrobo](https://github.com/vectie/moonrobo) | 面向物理世界的机器人接口层，负责桥接、安全边界、telemetry evidence、proof session 和 operator control。 | ![](https://badgen.net/github/stars/vectie/moonrobo) <br>![](https://badgen.net/github/forks/vectie/moonrobo) |
| 7   | [moonmoon](https://github.com/vectie/moonmoon) | MoonBit 原生月面地形与任务模型，提供 lunar terrain、mission scoring、trusted dossier 和 live 3D view。 | ![](https://badgen.net/github/stars/vectie/moonmoon) <br>![](https://badgen.net/github/forks/vectie/moonmoon) |

<div class="moon-section">
  <span class="moon-kicker">Repo Detail</span>
  <h2>逐个仓库看，它们分别在做什么</h2>
  <p class="moon-lead">
    下面这部分不再泛泛而谈，而是尽量贴近各仓库 README 里已经明确成立的产品边界。
  </p>
  <div class="moon-product-grid">
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📚</span>
        <div>
          <h3>moonbook</h3>
          <p class="moon-product-tag">可执行书、wiki、站点生成器</p>
        </div>
      </div>
      <p>MoonBook 把书籍渲染、wiki 沉淀、standing watch、知识导出和生成型站点统一到一个工作区里。它是 Moon Suite 的 durable knowledge surface。</p>
      <ul class="moon-mini-list">
        <li>book / wiki / site 三层统一工作区</li>
        <li>ingest、query、review、lint 持续知识维护</li>
        <li>knowledge bundle、graph、book-state 给其他产品消费</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🐇</span>
        <div>
          <h3>moonclaw</h3>
          <p class="moon-product-tag">agent runtime、gateway、作业系统</p>
        </div>
      </div>
      <p>MoonClaw 是执行和推理层。它围绕完整的 job runtime 设计，负责 session、jobs、memory、artifact、gateway 与远程 agent 控制。</p>
      <ul class="moon-mini-list">
        <li>proposal packet、run workspace、artifact ledger</li>
        <li>ACP remote agent 与本地 worker 协同</li>
        <li>MoonCode 原生命令队列、评测回路与 review receipt</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌕</span>
        <div>
          <h3>moontown</h3>
          <p class="moon-product-tag">town control plane、常驻调度</p>
        </div>
      </div>
      <p>Moontown 是治理与编排层。它在多个 MoonBook 和 MoonClaw 之上建立一个持久存在的 town，而不是单次脚本式自动化。</p>
      <ul class="moon-mini-list">
        <li>standing goals、mayor / keeper、scheduler、health</li>
        <li>town synthesis、scene dashboard、daemon supervision</li>
        <li>Wenyu civic protocol 与 final integration portfolio</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🖥️</span>
        <div>
          <h3>moondesk</h3>
          <p class="moon-product-tag">桌面入口、工作区与 MoonCode UI</p>
        </div>
      </div>
      <p>Moondesk 是给真实人类用的桌面外壳。它让你能浏览书、查文件、看产物、发 town 请求、开 MoonCode，而不用一整天待在终端里。</p>
      <ul class="moon-mini-list">
        <li>workspace explorer、cross-book search、preview、favorites</li>
        <li>MoonWiki / MoonCode 双模式工作区</li>
        <li>portable app-tool 导出、LaunchAgent 与原生 bundle</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📈</span>
        <div>
          <h3>moongate</h3>
          <p class="moon-product-tag">本地 proxy、metrics、suite discovery</p>
        </div>
      </div>
      <p>MoonGate 是整个套件的接入与观测层。它把 provider 配置、代理、usage、模型目录和 suite status 集中到一个本地网关里。</p>
      <ul class="moon-mini-list">
        <li>多 provider 兼容 proxy 与 live 切换</li>
        <li>usage logs、trend、metrics、circuit breaker、failover</li>
        <li>Moon Suite manifest / status contract 给兄弟项目读取</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🤖</span>
        <div>
          <h3>moonrobo</h3>
          <p class="moon-product-tag">robot gateway、proof、physical safety</p>
        </div>
      </div>
      <p>Moonrobo 是物理执行边界。它负责 RoboBook、机器人桥接、safety gate、proof session、runtime validation 和执行证据闭环。</p>
      <ul class="moon-mini-list">
        <li>MoonClaw 只能通过 Moonrobo 触达机器人动作</li>
        <li>readiness、loop-proof、proof-session 与 execution feedback</li>
        <li>telemetry evidence、operator cockpit、teleoperation boundary</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌔</span>
        <div>
          <h3>moonmoon</h3>
          <p class="moon-product-tag">月面 terrain 与任务世界模型</p>
        </div>
      </div>
      <p>Moonmoon 是月面任务与世界建模层。它现在聚焦 terrain、hazard、mission scoring、trusted square dossier 和 live 3D 检视。</p>
      <ul class="moon-mini-list">
        <li>DEM、slope、roughness、hazard classification</li>
        <li>corridor ranking、energy assessment、route clearance</li>
        <li>trusted dossier 与 renderer-neutral UI model</li>
      </ul>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">System Shape</span>
  <h2>七个仓库，不是七个散点</h2>
  <p class="moon-lead">
    一个更清楚的系统图是：MoonBook 负责知识，MoonClaw 负责执行，Moontown 负责持续编排，Moondesk 负责人类桌面入口，MoonGate 负责接入与观测，Moonrobo 负责物理世界边界，Moonmoon 负责目标现场的世界模型。
  </p>
  <div class="moon-flow">
    <div class="moon-flow-step"><strong>Knowledge:</strong> MoonBook 把信息变成 durable workspace</div>
    <div class="moon-flow-step"><strong>Execution:</strong> MoonClaw 把请求变成 jobs、sessions、artifacts</div>
    <div class="moon-flow-step"><strong>Continuity:</strong> Moontown 让这些工作长期运行并跨域协同</div>
    <div class="moon-flow-step"><strong>Operator Surface:</strong> Moondesk 和 MoonGate 让人能看见、能控制、能切换</div>
    <div class="moon-flow-step"><strong>Field Expansion:</strong> Moonrobo 和 Moonmoon 把系统推进到机器人与月面任务</div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Broader Goal</span>
  <h2>为什么现在可以认真说 inter-planet</h2>
  <ul class="moon-list">
    <li><strong>Agents / LLM：</strong> runtime、session、MoonCode、tool contracts、provider routing</li>
    <li><strong>Knowledge / Memory：</strong> executable books、wiki、bundle、graph、state、durable evidence</li>
    <li><strong>Observability：</strong> local proxy、provider control、usage、metrics、suite manifest</li>
    <li><strong>Robotics：</strong> readiness、proof session、bridge sidecar、telemetry、teleoperation</li>
    <li><strong>World Models：</strong> lunar terrain、hazard、mission corridor、trusted dossier、3D inspection</li>
  </ul>
  <p class="moon-lead">
    如果最终只记一句话，我们还是希望它是：<strong>An agentic inter-planet system.</strong> 但这次它后面有足够具体的仓库支撑，不只是一个很会飞的标题。
  </p>
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
