---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Vectie"
  text: "An agentic inter-planet system"
  tagline: "welcome to vectie 向量贴贴"
  image:
    src: /generated/moon-suite-hero.svg
    alt: Moon Suite constellation
  actions:
    - theme: brand
      text: 看看 Moon Suite
      link: /intro
    - theme: alt
      text: GitHub
      link: https://github.com/vectie

features:
  - title: moonbook
    details: 可执行书与 wiki 工作区，负责静态渲染、知识沉淀、standing watch、生成站点与状态导出。
    icon: 📚
    link: https://github.com/vectie/moonbook

  - title: moonclaw
    details: agent 运行时与作业系统，负责 gateway、session、jobs、ACP 远程代理和 MoonCode 执行。
    icon: 🐇
    link: https://github.com/vectie/moonclaw

  - title: moontown
    details: town 级控制平面，负责 standing goals、mayor 调度、跨书路由、24/7 daemon 和 civic protocol。
    icon: 🌕
    link: https://github.com/vectie/moontown

  - title: moondesk
    details: 人类桌面入口，负责工作区浏览、MoonWiki/MoonCode、任务提交、产物审阅和本地桌面打包。
    icon: 🖥️
    link: https://github.com/vectie/moondesk

  - title: moongate
    details: 本地 proxy 与 observability 网关，负责 provider 管理、usage、metrics、suite manifest 和控制台。
    icon: 📈
    link: https://github.com/vectie/moongate

  - title: moonrobo
    details: 机器人接口层，负责 RoboBook、安全闸门、bridge sidecar、proof session、telemetry 和 operator control。
    icon: 🤖
    link: https://github.com/vectie/moonrobo

  - title: moonmoon
    details: 月面世界模型，负责 terrain、hazard、mission scoring、trusted dossier 与 live 3D inspection。
    icon: 🌔
    link: https://github.com/vectie/moonmoon
---

<img class="moon-hero-image" src="/generated/moon-suite-hero.svg" alt="Moon Suite hero illustration">

<div class="moon-section">
  <span class="moon-kicker">What Ships Today</span>
  <h2>每个仓库都做一件很具体的事</h2>
  <p class="moon-lead">
    这次不讲大词。下面是每个仓库在当前阶段真正负责的产品边界，以及它们怎么一层层拼成 Moon Suite。
  </p>
  <div class="moon-product-grid">
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📚</span>
        <div>
          <h3>moonbook</h3>
          <p class="moon-product-tag">可执行书、wiki、站点生成</p>
        </div>
      </div>
      <p>MoonBook 是知识层和工作区层。它把 markdown、wiki、review queue、standing watch 和生成站点放进同一个 MoonBit-native 工作流里。</p>
      <ul class="moon-mini-list">
        <li>静态书籍渲染、本地 serve/watch</li>
        <li>持久化 wiki、ingest、query、review、lint</li>
        <li>知识 bundle、graph、book state 导出</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🐇</span>
        <div>
          <h3>moonclaw</h3>
          <p class="moon-product-tag">agent runtime、jobs、gateway</p>
        </div>
      </div>
      <p>MoonClaw 是执行层。它不是聊天壳子，而是完整的 job runtime，负责 proposal、session、artifact、memory 和本地/远程 agent 控制。</p>
      <ul class="moon-mini-list">
        <li>长任务执行、proposal packet、run workspace</li>
        <li>ACP remote agent 控制</li>
        <li>MoonCode 原生命令队列与评测证据</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌕</span>
        <div>
          <h3>moontown</h3>
          <p class="moon-product-tag">town orchestration、standing goals</p>
        </div>
      </div>
      <p>Moontown 是编排层。它把多个 MoonBook 工作区和多个 MoonClaw 运行时组织成一个 town 控制平面，让任务不再只是一次性触发。</p>
      <ul class="moon-mini-list">
        <li>mayor / keeper 角色化调度</li>
        <li>standing goals、due planning、daemon supervision</li>
        <li>civic protocol、scene dashboard、town synthesis</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🖥️</span>
        <div>
          <h3>moondesk</h3>
          <p class="moon-product-tag">desktop shell、workspace UI</p>
        </div>
      </div>
      <p>Moondesk 是人类操作面。它给 Moon Suite 一个真正能用的桌面入口，而不是“请继续在终端里勇敢生活”。</p>
      <ul class="moon-mini-list">
        <li>工作区浏览、搜索、预览、收藏和 inbox</li>
        <li>MoonWiki / MoonCode 双工作模式</li>
        <li>portable app-tool 导出与本地原生打包</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📈</span>
        <div>
          <h3>moongate</h3>
          <p class="moon-product-tag">proxy、usage、suite status</p>
        </div>
      </div>
      <p>MoonGate 是观测与接入层。它把 provider 管理、用量、代理、模型目录和套件发现都集中到一个本地网关里。</p>
      <ul class="moon-mini-list">
        <li>Codex / Claude / Gemini 等兼容 proxy</li>
        <li>usage、trend、metrics 与 provider failover</li>
        <li>Moon Suite manifest 与 status contract</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🤖</span>
        <div>
          <h3>moonrobo</h3>
          <p class="moon-product-tag">robot gateway、安全边界</p>
        </div>
      </div>
      <p>Moonrobo 是物理世界接口层。它不是调度器，也不是模型 runtime；它负责机器人真的动之前，该被证明和被阻止的那一层。</p>
      <ul class="moon-mini-list">
        <li>RoboBook、桥接侧车、runtime validation</li>
        <li>safety gate、proof session、execution replay</li>
        <li>telemetry evidence 与 teleoperation control</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌔</span>
        <div>
          <h3>moonmoon</h3>
          <p class="moon-product-tag">lunar terrain、mission model</p>
        </div>
      </div>
      <p>Moonmoon 是世界模型层。它用 MoonBit 做月面 terrain、hazard、mission scoring 和 trusted dossier，不是假装自己是一张好看的海报。</p>
      <ul class="moon-mini-list">
        <li>terrain grid、slope、roughness、hazard classification</li>
        <li>mission corridor、energy、clearance scoring</li>
        <li>trusted square dossier 与 live 3D 检视</li>
      </ul>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">System Flow</span>
  <h2>它们是怎么接起来的</h2>
  <p class="moon-lead">
    一个更具体的理解方式是：MoonBook 管知识，MoonClaw 管执行，Moontown 管持续调度，Moondesk 管人类入口，MoonGate 管接入与观测，Moonrobo 管物理边界，Moonmoon 管任务现场的世界模型。
  </p>
  <div class="moon-flow">
    <div class="moon-flow-step"><strong>1.</strong> MoonBook 沉淀知识、状态、证据和工作区</div>
    <div class="moon-flow-step"><strong>2.</strong> MoonClaw 把请求编译成 jobs、sessions 和 artifacts</div>
    <div class="moon-flow-step"><strong>3.</strong> Moontown 让这些工作持续运行，而不是做完就散</div>
    <div class="moon-flow-step"><strong>4.</strong> Moondesk 和 MoonGate 让人类能看见、能控制、能切换 provider</div>
    <div class="moon-flow-step"><strong>5.</strong> Moonrobo 和 Moonmoon 把系统推向机器人现场和月面任务环境</div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Broader Goal</span>
  <h2>更大的边界，应该讲得更干净</h2>
  <p class="moon-lead">
    现在说 “An agentic inter-planet system” 才合理，因为这些仓库已经分别覆盖知识、执行、治理、桌面、代理、机器人和月面模型。这个边界不是一句口号撑起来的，是仓库边界一层一层堆出来的。
  </p>
  <div class="moon-grid">
    <div class="moon-card">
      <h3>Agents / LLM</h3>
      <p>runtime、sessions、tool contracts、MoonCode、provider routing。</p>
    </div>
    <div class="moon-card">
      <h3>Knowledge / Memory</h3>
      <p>book、wiki、bundle、graph、state、durable evidence。</p>
    </div>
    <div class="moon-card">
      <h3>Robotics</h3>
      <p>readiness、proof session、bridge sidecar、telemetry 和 replay。</p>
    </div>
    <div class="moon-card">
      <h3>World Models</h3>
      <p>lunar terrain、hazard、mission corridor、trusted dossier。</p>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Product Map</span>
  <h2>Moon Suite 怎么拼在一起</h2>
  <img class="moon-diagram-image" src="/generated/moon-suite-map.svg" alt="Moon Suite product map">
</div>
