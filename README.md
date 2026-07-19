# Moonsuite — MoonBit + Rabbita

The public Vectie site is now the bilingual Moonsuite product experience: **Agent OS → OPC OS → ZPC**. Its application model, update loop, language switching, interactive system loop, product pages, and China-market plan are written in MoonBit and rendered by Rabbita.

```bash
pnpm install
moon update
pnpm test
pnpm dev
```

The editable HTML entry lives in `site/`. `pnpm build` creates `dist/client` and synchronizes the compiled artifact to the repository root for branch-based [GitHub Pages](https://vectie.github.io). The same artifact continues to serve the custom `vectie.com` domain.

## Previous organization introduction

[![github](https://badgen.net/badge/>>/GitHub/cyan)](https://github.com/vectie)
[![gitee](https://badgen.net/badge/>>/Gitee/cyan)](https://gitee.com/vectie)
[![vectie-open-source-organization](https://badgen.net/badge/organization/join%20us/cyan)](#how-to-join)
[![license](https://badgen.net/github/license/vectie/vectie.github.io?color=green)](https://github.com/vectie/vectie.github.io/blob/main/LICENSE)

welcome to [Vectie](https://github.com/vectie) 向量贴贴

This is no longer a single-repo story. It is a Moon Suite story.

From durable knowledge to runtime execution, from town orchestration to desktop operators, from observability to robotics and lunar world models, our interests are broad on purpose and the products are starting to connect. The clean umbrella line is: **an agentic inter-planet system**.

See the [中文文档](README_CN.md) for Chinese README.

## Sites

https://vectie.com

## Moon Suite

Vectie now represents a broader public Moon product line rather than a short featured-repo list.


| # | Project | Description | Popularity |
| --- | --- | --- | --- |
| 1   | [moonbook](https://github.com/vectie/moonbook) | MoonBit-native mdBook port with static rendering, local serving, watch workflows, and a persistent wiki workspace. | ![](https://badgen.net/github/stars/vectie/moonbook) <br>![](https://badgen.net/github/forks/vectie/moonbook) |
| 2   | [moonclaw](https://github.com/vectie/moonclaw) | MoonBit-native agent runtime with gateway, memory, job orchestration, and ACP remote-agent control. | ![](https://badgen.net/github/stars/vectie/moonclaw) <br>![](https://badgen.net/github/forks/vectie/moonclaw) |
| 3   | [moontown](https://github.com/vectie/moontown) | Town-level orchestration above multiple moonbook workspaces and moonclaw workers, with routing, isolation, persistence, and a dashboard that knows who is causing trouble. | ![](https://badgen.net/github/stars/vectie/moontown) <br>![](https://badgen.net/github/forks/vectie/moontown) |
| 4   | [moondesk](https://github.com/vectie/moondesk) | Human desktop companion for the Moon system, built to inspect MoonBook workspaces, review MoonClaw artifacts, submit work to Moontown, and manage files without dropping into a terminal. | ![](https://badgen.net/github/stars/vectie/moondesk) <br>![](https://badgen.net/github/forks/vectie/moondesk) |
| 5   | [moongate](https://github.com/vectie/moongate) | Local proxy, statistics, and observability gateway for provider control, usage, metrics, and suite status. | ![](https://badgen.net/github/stars/vectie/moongate) <br>![](https://badgen.net/github/forks/vectie/moongate) |
| 6   | [moonrobo](https://github.com/vectie/moonrobo) | Physical-world interface layer for robot bridges, safety gates, telemetry evidence, proof sessions, and operator control. | ![](https://badgen.net/github/stars/vectie/moonrobo) <br>![](https://badgen.net/github/forks/vectie/moonrobo) |
| 7   | [moonmoon](https://github.com/vectie/moonmoon) | MoonBit-native lunar terrain and mission model for world claims, route scoring, trusted dossiers, and live 3D inspection. | ![](https://badgen.net/github/stars/vectie/moonmoon) <br>![](https://badgen.net/github/forks/vectie/moonmoon) |

## Product View

- `moonbook`: executable books, durable wiki, generated projections, state and knowledge contracts
- `moonclaw`: runtime execution, sessions, jobs, tool use, MoonCode flows, artifact lifecycle
- `moontown`: standing goals, mayor and keeper supervision, cross-book routing, civic orchestration
- `moondesk`: human desktop shell for MoonWiki, MoonCode, workspace inspection, and task submission
- `moongate`: suite proxy, provider control, metrics, usage, and operational visibility
- `moonrobo`: robot gateway, safety boundary, telemetry evidence, proof sessions, teleoperation
- `moonmoon`: lunar terrain and mission model, trusted evidence dossiers, 3D inspection

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
