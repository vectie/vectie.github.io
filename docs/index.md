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
    details: MoonBit 原生 mdBook 实现，包含静态渲染、本地服务、watch 工作流和持久化 wiki 工作区。
    icon: 📚
    link: https://github.com/vectie/moonbook

  - title: moonclaw
    details: MoonBit 原生 agent 运行时，包含 gateway、memory、作业编排和 ACP 远程 agent 控制。
    icon: 🐇
    link: https://github.com/vectie/moonclaw

  - title: moontown
    details: 位于多个 moonbook 工作区和 moonclaw worker 之上的 town 级编排层，提供路由、隔离规则、持久化 town 状态，以及房间式 dashboard。
    icon: 🌕
    link: https://github.com/vectie/moontown

  - title: moondesk
    details: Moon 系统的人类桌面伙伴，用来查看 MoonBook 工作区、审阅 MoonClaw 产物、向 Moontown 提交任务，以及在不切终端的情况下管理文件。
    icon: 🖥️
    link: https://github.com/vectie/moondesk

  - title: moonstat
    details: Moon Suite 的本地代理、统计与可观测性网关，负责 provider 控制、usage、metrics 和 suite status。
    icon: 📈
    link: https://github.com/vectie/moonstat

  - title: moonrobo
    details: Moon Suite 的物理世界接口层，负责机器人桥接、安全边界、遥测证据和 teleoperation 控制。
    icon: 🤖
    link: https://github.com/vectie/moonrobo

  - title: moonmoon
    details: MoonBit 原生月面地形与任务模型，为 lunar mission、terrain analysis 和 trusted dossier 提供世界模型。
    icon: 🌔
    link: https://github.com/vectie/moonmoon
---

<img class="moon-hero-image" src="/generated/moon-suite-hero.svg" alt="Moon Suite hero illustration">

<div class="moon-section">
  <span class="moon-kicker">Broad View</span>
  <h2>我们不是单点工具，而是一个 agentic inter-planet system</h2>
  <p class="moon-lead">
    Vectie 正在把 durable knowledge、agent runtime、town orchestration、desktop shell、observability、robot gateway 和 world model 放进同一套 MoonBit-native 系统里，目标不是做一组零散工具，而是构建一个可跨数字世界与物理现场协同运行的智能体系。
  </p>
  <div class="moon-grid">
    <div class="moon-card">
      <h3>从书到行动</h3>
      <p>MoonBook 负责知识与工作区，MoonClaw 负责执行，Moontown 负责持续调度与跨书协同。</p>
    </div>
    <div class="moon-card">
      <h3>从桌面到现场</h3>
      <p>Moondesk 把人带进系统，Moonrobo 把机器人带进系统，Moonstat 让整个套件的运行情况可见可管。</p>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Broader Goal</span>
  <h2>从数字世界到真实世界，再到更远的现场</h2>
  <p class="moon-lead">
    我们希望让智能体先在书、任务、城镇、桌面和观测系统里形成稳定协作，再进一步走向机器人、月面任务、空间资源场景与跨环境持续运行。换句话说：这是一个面向未来的 <strong>agentic inter-planet system</strong>。
  </p>
</div>

<div class="moon-section">
  <span class="moon-kicker">Moon Scope</span>
  <h2>我们的兴趣范围很宽，而且是故意的</h2>
  <div class="moon-grid">
    <div class="moon-card">
      <h3>Agents / LLM</h3>
      <p>从 bounded runtime、tool use、session contract 到 operator-facing MoonCode surface。</p>
    </div>
    <div class="moon-card">
      <h3>Knowledge / Memory</h3>
      <p>从 executable book、wiki ingest、standing watch 到 graph、bundle、state contract。</p>
    </div>
    <div class="moon-card">
      <h3>Robotics / Physical World</h3>
      <p>从 safety gate、telemetry、proof session 到 RoboBook evidence loop。</p>
    </div>
    <div class="moon-card">
      <h3>Simulation / World Models</h3>
      <p>从 lunar terrain、mission scoring 到 trusted square dossier 和 live 3D view。</p>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Product Map</span>
  <h2>Moon Suite 怎么拼在一起</h2>
  <img class="moon-diagram-image" src="/generated/moon-suite-map.svg" alt="Moon Suite product map">
</div>
