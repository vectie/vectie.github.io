# MoonSuite product catalog

Status: authoritative public taxonomy
Last reviewed: 2026-07-30

MoonSuite is an Agent OS for a one-person company: knowledge is retained in
MoonBook, agents execute through MoonClaw, declared work advances through
MoonFlow, providers and authority are controlled through MoonGate, and humans
operate the system through MoonDesk. Domain products and packs add policy and
user outcomes without adding agent runtimes or polluting the platform.

## Platform and operator layer

| Component | Class | Owns | Current maturity |
| --- | --- | --- | --- |
| MoonLib | library | Shared deterministic paths and portable contracts | available library; release process still maturing |
| MoonClaw | platform | The single agent runtime, jobs, sessions, tools, memory, MoonCode execution | advanced local alpha |
| MoonFlow | platform | Durable declared-work orchestration, recovery, attempts, evidence and review state | local alpha; invoked by an operator or MoonClaw |
| MoonGate | platform | Provider proxying, usage, policy registry, capability and suite observation | feature-testing alpha |
| MoonBook | platform product | Executable books, wiki truth, accepted knowledge, Keeper and Bookkeeper learning | local alpha |
| MoonDesk | desktop | Human workspace, review, application hosting and composition canvas | single-user local alpha |

MoonTown is a higher-level governed environment rather than a replacement for
MoonFlow or MoonClaw. It coordinates books, workers, standing goals and civic
roles; it does not become a second agent runtime.

## Domain products and packs

| Component | Class | User outcome | Current maturity |
| --- | --- | --- | --- |
| MoonProj | domain product | OPC accounting, projects, budget, procurement, sales and operating control | migration/preview alpha |
| MoonCast | domain pack and studio | Governed 3–8 minute AIGC episode production and delivery | deterministic pipeline alpha; real-provider commercial proof pending |
| MoonFish | domain pack | Governed A-share research and paper portfolio | research/shadow-only; licensed live data pending |
| MoonFind | domain pack | Evidence-backed cross-paper research and reviewed capability proposals | research alpha; public adapters only |
| MoonMold | domain pack | Governed editable spatial models and representation evidence | early alpha; mock and conditional Blender paths |
| MoonRobo | domain product | Safety-governed robot integration, telemetry, proof and operator control | experimental; hardware validation is bounded |
| MoonMoon | domain product | Lunar terrain, route and robot-mission simulation | digital simulation alpha |
| MoonTown | domain platform | Persistent multi-book civic orchestration and governed synthesis | experimental local alpha |

## Supporting components

| Component | Class | Role |
| --- | --- | --- |
| MoonEdit | library | Host-independent text/code editing core |
| MoonLeaf | library | Conservative OOXML preview and lightweight editing |
| MoonVis | design system | Visual identity, assets and design guidance |
| Lepusa | framework | Native application packaging and desktop host |
| Rabbita/Bunnia | framework | MoonBit user-interface framework |
| MoonChat | incubating library | Future portable conversation contracts; not yet a standalone application |

## Retired or non-product identities

- **MoonStat** is not a separate product. Its intended proxy, statistics and
  observability role belongs to MoonGate.
- **MoonMini** is not a MoonSuite product. The checkout points to the Bunnia
  application framework.
- MoonLeaf format worktrees, MoonEdit feature worktrees, and MoonDesk document
  worktrees are development branches of their owning repositories, not product
  entries.

## Executable system boundary

```text
MoonDesk
  ├─ reads installed capability manifests and health
  ├─ hosts product/pack applications
  └─ submits reviewed work
       ↓
MoonFlow — durable dependency, attempt, recovery and review state
       ↓
MoonClaw — sole agent/model/tool runtime
       ↓
pack or product adapter — owns domain policy and effect
       ↓
evidence/result receipt
       ↓
MoonBook — accepted outcome and Bookkeeper Three-Gap learning
```

MoonGate supplies provider access, usage evidence, authority policy and
capability observation across this path. MoonTown may propose and coordinate
work, but cannot impersonate the runtime, accept its own result, or grant
physical authority.

## Capability truth

The public catalog names product intent. The installed capability registry is
the authority for execution. A product is executable only when its manifest,
schema versions, adapter health, authority classes and endpoint pass
conformance. The composition canvas must not invent an operation from a product
name.

## Current suite priorities

1. Make every canvas node derive from a real installed capability.
2. Finish MoonDesk direct document/code editing and clean-machine operation.
3. Prove MoonCast with a real provider-generated accepted episode.
4. Start MoonFish's licensed-data forward shadow operation.
5. Repair and demonstrate one complete MoonRobo/MoonMoon evidence loop.
6. Promote Bookkeeper learning only from reviewed outcomes.

New product names should remain frozen until these vertical paths are
repeatable.
