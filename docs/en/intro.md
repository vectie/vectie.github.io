# Introduction

[![github](https://badgen.net/badge/>>/GitHub/cyan)](https://github.com/vectie)
[![gitee](https://badgen.net/badge/>>/Gitee/cyan)](https://gitee.com/vectie)
[![vectie-open-source-organization](https://badgen.net/badge/organization/join%20us/cyan)](#how-to-join)
[![license](https://badgen.net/github/license/vectie/vectie.github.io?color=green)](https://github.com/vectie/vectie.github.io/blob/main/LICENSE)

welcome to [Vectie](https://github.com/vectie) 向量贴贴

This is not a single repo story anymore. It is a broad Moon Suite story.

From durable knowledge to runtime execution, from town orchestration to desktop operators, from observability to robotics and lunar world models, the scope is intentionally wide. But this page should explain each repo clearly instead of hiding inside that width. The clean umbrella line is still this: <strong>an agentic inter-planet system</strong>.

## Sites

https://vectie.com

<img class="moon-hero-image" src="/generated/moon-suite-hero.svg" alt="Moon Suite hero illustration">

## Moon Suite

Vectie now ships a broader public Moon product line rather than a short repo list.


| # | Project | Description | Popularity |
| --- | --- | --- | --- |
| 1   | [moonbook](https://github.com/vectie/moonbook) | MoonBit-native mdBook port with static rendering, local serving, watch workflows, and a persistent wiki workspace. | ![](https://badgen.net/github/stars/vectie/moonbook) <br>![](https://badgen.net/github/forks/vectie/moonbook) |
| 2   | [moonclaw](https://github.com/vectie/moonclaw) | MoonBit-native agent runtime with gateway, memory, job orchestration, and ACP remote-agent control. | ![](https://badgen.net/github/stars/vectie/moonclaw) <br>![](https://badgen.net/github/forks/vectie/moonclaw) |
| 3   | [moontown](https://github.com/vectie/moontown) | Town-level orchestration above multiple moonbook workspaces and moonclaw workers, with routing, isolation, persistence, and a dashboard that knows who is causing trouble. | ![](https://badgen.net/github/stars/vectie/moontown) <br>![](https://badgen.net/github/forks/vectie/moontown) |
| 4   | [moondesk](https://github.com/vectie/moondesk) | Human desktop companion for the Moon system, built to inspect MoonBook workspaces, review MoonClaw artifacts, submit work to Moontown, and manage files without dropping into a terminal. | ![](https://badgen.net/github/stars/vectie/moondesk) <br>![](https://badgen.net/github/forks/vectie/moondesk) |
| 5   | [moonstat](https://github.com/vectie/moonstat) | Local proxy, statistics, and observability gateway for provider control, usage, metrics, and suite status. | ![](https://badgen.net/github/stars/vectie/moonstat) <br>![](https://badgen.net/github/forks/vectie/moonstat) |
| 6   | [moonrobo](https://github.com/vectie/moonrobo) | Physical-world interface layer for robot bridges, safety gates, telemetry evidence, proof sessions, and operator control. | ![](https://badgen.net/github/stars/vectie/moonrobo) <br>![](https://badgen.net/github/forks/vectie/moonrobo) |
| 7   | [moonmoon](https://github.com/vectie/moonmoon) | MoonBit-native lunar terrain and mission model for world claims, route scoring, trusted dossiers, and live 3D inspection. | ![](https://badgen.net/github/stars/vectie/moonmoon) <br>![](https://badgen.net/github/forks/vectie/moonmoon) |

<div class="moon-section">
  <span class="moon-kicker">Repo Detail</span>
  <h2>What each repo actually owns</h2>
  <p class="moon-lead">
    This section stays close to the boundaries already established in the sibling repos rather than flattening everything into one marketing sentence.
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
      <p>MoonBook unifies book rendering, wiki materialization, standing watch, knowledge exports, and generated websites inside one workspace. It is the durable knowledge surface of the suite.</p>
      <ul class="moon-mini-list">
        <li>One workspace for books, wiki pages, and generated sites</li>
        <li>Persistent ingest, query, review, and lint loops</li>
        <li>Knowledge bundles, graphs, and book-state contracts for sibling tools</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🐇</span>
        <div>
          <h3>moonclaw</h3>
          <p class="moon-product-tag">Agent runtime, gateway, job system</p>
        </div>
      </div>
      <p>MoonClaw is the execution and reasoning layer. It is shaped around a full job runtime with ownership over sessions, jobs, memory, artifacts, gateway services, and remote-agent control.</p>
      <ul class="moon-mini-list">
        <li>Proposal packets, run workspaces, and artifact ledgers</li>
        <li>ACP remote agents alongside local workers</li>
        <li>Native MoonCode command queues, eval loops, and review receipts</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌕</span>
        <div>
          <h3>moontown</h3>
          <p class="moon-product-tag">Town control plane, durable orchestration</p>
        </div>
      </div>
      <p>Moontown is the governance and orchestration layer. It turns multiple MoonBook domains and MoonClaw runtimes into a persistent town rather than a pile of disconnected automation runs.</p>
      <ul class="moon-mini-list">
        <li>Standing goals, mayor and keeper supervision, scheduler, and health</li>
        <li>Town synthesis, scene dashboards, and daemon supervision</li>
        <li>Wenyu civic protocols and the final integration portfolio</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🖥️</span>
        <div>
          <h3>moondesk</h3>
          <p class="moon-product-tag">Desktop shell, workspace UI, MoonCode surface</p>
        </div>
      </div>
      <p>Moondesk is the desktop shell for actual humans. It lets users browse books, inspect files, review artifacts, submit town work, and open MoonCode without living inside a terminal all day.</p>
      <ul class="moon-mini-list">
        <li>Workspace explorer, cross-book search, previews, favorites, and inbox flows</li>
        <li>MoonWiki and MoonCode workspace modes</li>
        <li>Portable app-tool export, LaunchAgent support, and native bundles</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">📈</span>
        <div>
          <h3>moonstat</h3>
          <p class="moon-product-tag">Local proxy, metrics, suite discovery</p>
        </div>
      </div>
      <p>Moonstat is the suite access and observability layer. It centralizes provider configuration, proxying, usage accounting, model catalogs, and suite-status discovery in one local gateway.</p>
      <ul class="moon-mini-list">
        <li>Multi-provider compatibility and live switching</li>
        <li>Usage logs, trends, metrics, circuit breakers, and failover</li>
        <li>Moon Suite manifest and status contracts for sibling products</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🤖</span>
        <div>
          <h3>moonrobo</h3>
          <p class="moon-product-tag">Robot gateway, proof, physical safety</p>
        </div>
      </div>
      <p>Moonrobo is the physical execution boundary. It owns RoboBook, robot bridges, safety gates, proof sessions, runtime validation, and the evidence loop around real-world actions.</p>
      <ul class="moon-mini-list">
        <li>MoonClaw reaches robot actions only through Moonrobo</li>
        <li>Readiness, loop-proof, proof-session, and execution feedback surfaces</li>
        <li>Telemetry evidence, operator cockpit, and teleoperation boundaries</li>
      </ul>
    </div>
    <div class="moon-product-card">
      <div class="moon-product-head">
        <span class="moon-product-icon">🌔</span>
        <div>
          <h3>moonmoon</h3>
          <p class="moon-product-tag">Lunar terrain and mission world model</p>
        </div>
      </div>
      <p>Moonmoon is the lunar mission and world-model layer. It currently focuses on terrain analysis, hazard scoring, mission planning, trusted square dossiers, and live 3D inspection.</p>
      <ul class="moon-mini-list">
        <li>DEM grids, slope, roughness, and hazard classification</li>
        <li>Corridor ranking, energy assessment, and route clearance</li>
        <li>Trusted dossiers and renderer-neutral UI models</li>
      </ul>
    </div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">System Shape</span>
  <h2>Seven repos, not seven disconnected dots</h2>
  <p class="moon-lead">
    The clean system picture is this: MoonBook owns knowledge, MoonClaw owns execution, Moontown owns continuity, Moondesk owns the human shell, Moonstat owns access and observability, Moonrobo owns the physical boundary, and Moonmoon owns the world model of the target field.
  </p>
  <div class="moon-flow">
    <div class="moon-flow-step"><strong>Knowledge:</strong> MoonBook turns information into a durable workspace</div>
    <div class="moon-flow-step"><strong>Execution:</strong> MoonClaw turns requests into jobs, sessions, and artifacts</div>
    <div class="moon-flow-step"><strong>Continuity:</strong> Moontown keeps those loops running across time and domains</div>
    <div class="moon-flow-step"><strong>Operator Surface:</strong> Moondesk and Moonstat keep humans informed, in control, and connected</div>
    <div class="moon-flow-step"><strong>Field Expansion:</strong> Moonrobo and Moonmoon extend the suite into robotics and lunar mission environments</div>
  </div>
</div>

<div class="moon-section">
  <span class="moon-kicker">Broader Goal</span>
  <h2>Why “inter-planet” is now a fair claim</h2>
  <ul class="moon-list">
    <li><strong>Agents / LLM:</strong> runtimes, sessions, MoonCode, tool contracts, provider routing</li>
    <li><strong>Knowledge / Memory:</strong> executable books, wiki, bundles, graphs, state exports, durable evidence</li>
    <li><strong>Observability:</strong> local proxy routing, provider controls, metrics, usage, suite manifest</li>
    <li><strong>Robotics:</strong> readiness, proof sessions, bridge sidecars, telemetry, teleoperation</li>
    <li><strong>World models:</strong> lunar terrain, hazard scoring, mission corridors, trusted dossiers, live 3D inspection</li>
  </ul>
  <p class="moon-lead">
    If people remember one line instead of seven repo names, it should still be: <strong>An agentic inter-planet system.</strong> The difference now is that the repos underneath actually justify it.
  </p>
</div>

<div class="moon-section">
  <span class="moon-kicker">Product Map</span>
  <h2>How the Moon Suite fits together</h2>
  <img class="moon-diagram-image" src="/generated/moon-suite-map.svg" alt="Moon Suite product map">
</div>

## How to join

> _If you want to go fast, go alone. If you want to go far, go together._

Vectie is an open-source group for people who want to build practical systems around agents, LLMs, and robotics. If those areas interest you, join us and contribute code, experiments, docs, tooling, ideas, or one very convincing bug report.

- Comment on [Vectie Discussions](https://github.com/orgs/vectie/discussions) and briefly introduce your interests in agents, LLMs, robotics, or related infrastructure.

By default, your Vectie membership is hidden. If you want the organization to appear on your GitHub profile, change it from "Private" to "Public" at https://github.com/orgs/vectie/people.

New members usually start by forking a project, opening pull requests, and building familiarity with the workflow. Sustained high-quality contributions can lead to broader collaboration on the projects.

If you are new to open source, you can start with this [guide](https://github.com/firstcontributions/first-contributions/blob/master/README.md).

## Core Members

<p>
  <a href="https://github.com/jiaanguo"><img src="https://github.com/jiaanguo.png?size=96" width="64" height="64" alt="jiaanguo" /></a>
  <a href="https://github.com/giantclaw"><img src="https://github.com/giantclaw.png?size=96" width="64" height="64" alt="giantclaw" /></a>
  <a href="https://github.com/zhangsj0608"><img src="https://github.com/zhangsj0608.png?size=96" width="64" height="64" alt="zhangsj0608" /></a>
</p>

- [jiaanguo](https://github.com/jiaanguo)
- [giantclaw](https://github.com/giantclaw)
- [zhangsj0608](https://github.com/zhangsj0608)

## Contributors

Vectie exists thanks to everyone who contributes code, docs, ideas, and reviews.

<a href="https://github.com/vectie">
  <img src="https://api.vaunt.dev/v1/github/entities/vectie/contributors?limit=24&format=svg" alt="Vectie contributors" width="420" />
</a>
