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
      text: Explore the Moon Suite
      link: /en/intro
    - theme: alt
      text: GitHub
      link: https://github.com/vectie

features:
  - title: moonbook
    details: Executable book and wiki workspace for rendering, knowledge capture, standing watch, generated sites, and state exports.
    icon: 📚
    link: https://github.com/vectie/moonbook

  - title: moonclaw
    details: Agent runtime and job system for gateway, sessions, artifacts, ACP remote agents, and MoonCode execution.
    icon: 🐇
    link: https://github.com/vectie/moonclaw

  - title: moontown
    details: Town control plane for standing goals, mayor scheduling, cross-book routing, 24/7 daemon supervision, and civic protocols.
    icon: 🌕
    link: https://github.com/vectie/moontown

  - title: moondesk
    details: Human desktop shell for workspace browsing, MoonWiki and MoonCode, task submission, artifact review, and local packaging.
    icon: 🖥️
    link: https://github.com/vectie/moondesk

  - title: moonstat
    details: Local proxy and observability gateway for provider management, usage, metrics, suite manifest, and operator console.
    icon: 📈
    link: https://github.com/vectie/moonstat

  - title: moonrobo
    details: Robot interface layer for RoboBook, safety gates, bridge sidecars, proof sessions, telemetry, and operator control.
    icon: 🤖
    link: https://github.com/vectie/moonrobo

  - title: moonmoon
    details: Lunar world model for terrain analysis, hazard scoring, mission planning, trusted dossiers, and live 3D inspection.
    icon: 🌔
    link: https://github.com/vectie/moonmoon
---

<img class="moon-hero-image" src="/generated/moon-suite-hero.svg" alt="Moon Suite hero illustration">

<div class="moon-section">
  <span class="moon-kicker">What Ships Today</span>
  <h2>Each repo owns a very specific job</h2>
  <p class="moon-lead">
    The homepage should not hide behind umbrella language. These repos already have concrete product boundaries, and the suite only makes sense when those boundaries stay legible.
  </p>
  <div class="moon-product-grid">
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📚</span>
        <div>
          <h3>moonbook</h3>
          <p class="moon-product-tag">Executable books, wiki workspaces, site generation</p>
        </div>
      </div>
      <p>MoonBook is the knowledge and workspace layer. It turns markdown books, wiki pages, review queues, standing watch, and generated sites into one MoonBit-native workspace.</p>
      <ul class="moon-mini-list">
        <li>Static book rendering with local serve and watch</li>
        <li>Persistent wiki ingest, query, review, and lint</li>
        <li>Knowledge bundles, graphs, and book state exports</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🐇</span>
        <div>
          <h3>moonclaw</h3>
          <p class="moon-product-tag">Agent runtime, jobs, gateway</p>
        </div>
      </div>
      <p>MoonClaw is the execution layer. It is a full job runtime rather than a thin chat shell, with ownership over proposals, sessions, artifacts, memory, and local plus remote agents.</p>
      <ul class="moon-mini-list">
        <li>Long-running jobs, proposal packets, and run workspaces</li>
        <li>ACP remote-agent control</li>
        <li>Native MoonCode command queues and eval evidence</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌕</span>
        <div>
          <h3>moontown</h3>
          <p class="moon-product-tag">Town orchestration, standing goals</p>
        </div>
      </div>
      <p>Moontown is the orchestration layer. It organizes multiple MoonBook domains and MoonClaw runtimes into a town control plane so work can run continuously instead of as one-off commands.</p>
      <ul class="moon-mini-list">
        <li>Mayor and keeper supervision</li>
        <li>Standing goals, due planning, and daemon supervision</li>
        <li>Civic protocols, scene dashboards, and town synthesis</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🖥️</span>
        <div>
          <h3>moondesk</h3>
          <p class="moon-product-tag">Desktop shell, workspace UI</p>
        </div>
      </div>
      <p>Moondesk is the human operator surface. It gives the suite a real desktop front end instead of asking users to stay cheerful inside a terminal forever.</p>
      <ul class="moon-mini-list">
        <li>Workspace browsing, search, previews, favorites, and inbox flows</li>
        <li>MoonWiki and MoonCode workspace modes</li>
        <li>Portable app-tool export and native desktop packaging</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📈</span>
        <div>
          <h3>moonstat</h3>
          <p class="moon-product-tag">Proxy, usage, suite status</p>
        </div>
      </div>
      <p>Moonstat is the observability and access layer. It centralizes provider management, local proxying, model catalogs, usage accounting, and suite discovery into one gateway.</p>
      <ul class="moon-mini-list">
        <li>Codex, Claude, Gemini, and related compatibility paths</li>
        <li>Usage, trends, metrics, and provider failover controls</li>
        <li>Moon Suite manifest and status contracts</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🤖</span>
        <div>
          <h3>moonrobo</h3>
          <p class="moon-product-tag">Robot gateway, physical safety boundary</p>
        </div>
      </div>
      <p>Moonrobo is the physical-world interface layer. It is not the scheduler and not the model runtime; it is the place where robot actions must be checked, bounded, proved, or blocked.</p>
      <ul class="moon-mini-list">
        <li>RoboBook, bridge sidecars, and runtime validation</li>
        <li>Safety gates, proof sessions, and execution replay</li>
        <li>Telemetry evidence and teleoperation controls</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌔</span>
        <div>
          <h3>moonmoon</h3>
          <p class="moon-product-tag">Lunar terrain and mission model</p>
        </div>
      </div>
      <p>Moonmoon is the world-model layer. It uses MoonBit for lunar terrain analysis, hazard classification, mission scoring, and trusted dossiers rather than pretending to be only a pretty concept slide.</p>
      <ul class="moon-mini-list">
        <li>Terrain grids, slope, roughness, and hazard analysis</li>
        <li>Mission corridors, energy assessment, and route scoring</li>
        <li>Trusted square dossiers and live 3D inspection</li>
      </ul>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">System Flow</span>
  <h2>How the layers connect</h2>
  <p class="moon-lead">
    A more useful framing is operational: MoonBook owns knowledge, MoonClaw owns execution, Moontown owns continuity, Moondesk owns the human shell, Moonstat owns access and observability, Moonrobo owns the physical boundary, and Moonmoon owns the field model.
  </p>
  <div class="moon-flow">
    <div class="moon-flow-step"><strong>1.</strong> MoonBook stores knowledge, state, evidence, and workspaces</div>
    <div class="moon-flow-step"><strong>2.</strong> MoonClaw turns requests into jobs, sessions, and artifacts</div>
    <div class="moon-flow-step"><strong>3.</strong> Moontown keeps those loops running over time</div>
    <div class="moon-flow-step"><strong>4.</strong> Moondesk and Moonstat keep humans informed, in control, and able to switch providers</div>
    <div class="moon-flow-step"><strong>5.</strong> Moonrobo and Moonmoon extend the system toward robotics and lunar missions</div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Broader Goal</span>
  <h2>The ambition is broad, but the repo boundaries are clean</h2>
  <p class="moon-lead">
    “An agentic inter-planet system” only works as a headline because the underlying repos already cover knowledge, execution, governance, desktop operations, proxying, robotics, and lunar modeling with real product seams.
  </p>
  <div class="moon-grid">
    <div class="moon-card">
      <h3>Agents / LLM</h3>
      <p>Runtimes, sessions, tool contracts, MoonCode, and provider routing.</p>
    </div>
    <div class="moon-card">
      <h3>Knowledge / Memory</h3>
      <p>Books, wiki, bundles, graphs, state snapshots, and durable evidence.</p>
    </div>
    <div class="moon-card">
      <h3>Robotics</h3>
      <p>Readiness, proof sessions, bridge sidecars, telemetry, and replay.</p>
    </div>
    <div class="moon-card">
      <h3>World Models</h3>
      <p>Lunar terrain, hazard scoring, mission corridors, and trusted dossiers.</p>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Product Map</span>
  <h2>How the Moon Suite fits together</h2>
  <img class="moon-diagram-image" src="/generated/moon-suite-map.svg" alt="Moon Suite product map">
</div>
