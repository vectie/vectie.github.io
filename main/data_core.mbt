///|
fn core_products() -> Array[Product] {
  [
    {
      slug: "moonclaw",
      name: "MoonClaw",
      cn: "月爪",
      kind: Core,
      stage: Open,
      github: "https://github.com/vectie/moonclaw",
      visual: "runtime",
      philosophy: bi(
        "执行，是智能体对世界作出的唯一承诺。", "Execution is the only promise an agent makes to the world.",
      ),
      intro: bi(
        "MoonBit 原生智能体运行时，把对话、长期任务、本地工具、远程智能体、工作区与操作面收进同一个可检查的执行边界。",
        "A MoonBit-native agent runtime unifying conversations, durable jobs, tools, remote agents, workspaces, and operator control.",
      ),
      deep_dive: bi(
        "MoonClaw 不是聊天外壳，而是 Moonsuite 的执行内核。提案被编译为工作流，任务在隔离工作区中运行；工具调用、补丁、测试、产物、记忆和人工接受或拒绝进入连续证据日志。异步作业、ACP 远程智能体和本地网关共同把“让 AI 做事”变成可恢复、可审计、可接管的运行时协议。",
        "MoonClaw is Moonsuite’s execution kernel, not a chat wrapper. Proposals compile into workflows; tasks run in isolated workspaces; tool calls, patches, tests, artifacts, memory, and human decisions enter a continuous evidence journal. Async jobs, ACP agents, and a local gateway make execution recoverable, auditable, and operator-takeover ready.",
      ),
      opc: bi(
        "它相当于 OPC 的虚拟执行团队：创始人只定义目标、权限和验收，MoonClaw 负责长时间运行、智能体交接、失败收敛，并把每次执行变成可复用能力。",
        "It acts as the OPC’s virtual execution team: the founder defines goals, authority, and acceptance while MoonClaw handles long runs, handoffs, failure convergence, and reusable capability.",
      ),
      strengths: [
        bi(
          "MoonCode 命令队列、补丁、测试与证据闭环", "MoonCode queues, patches, tests, and evidence loops",
        ),
        bi(
          "本地与 ACP 远程智能体统一调度", "Unified local and ACP agent orchestration",
        ),
        bi(
          "飞书、微信、Web 与 CLI 多入口", "Feishu, Weixin, web, and CLI entry points",
        ),
      ],
      interfaces: ["MoonBook", "MoonFlow", "MoonDesk", "MoonGate", "Moontown"],
      evidence: bi(
        "公开仓库；页面展示真实编译的操作台静态状态，运行时、网关、作业、ACP 与证据链已实现。截图中的本地网关未连接，因此不把它描述为生产运行证明；完整持久化 MoonCode 体验仍在持续收口。",
        "Public repository; the page shows the real compiled operator UI in a static state. Runtime, gateway, jobs, ACP, and evidence lineage exist. The local gateway is disconnected in the capture, so it is not presented as production-runtime proof; the fully persistent MoonCode experience is still converging.",
      ),
    },
    {
      slug: "moonbook",
      name: "MoonBook",
      cn: "月书",
      kind: Core,
      stage: Open,
      github: "https://github.com/vectie/moonbook",
      visual: "memory",
      philosophy: bi(
        "记忆不是数据库，而是智能体与世界之间的三本账：信息差、认知差、执行差。",
        "Memory is not a database; it is three ledgers between an agent and the world: information, cognition, and execution gaps.",
      ),
      intro: bi(
        "持久化 Agentic 工作空间，把原始证据、知识页、评审队列、可执行工具与发布投影组织为一本会生长的书。",
        "A persistent agentic workspace organizing evidence, knowledge, review, executable tools, and projections into a book that grows.",
      ),
      deep_dive: bi(
        "MoonBook 把文档、Wiki、记忆和工具放进同一个版本化工作空间。研究从 raw 证据进入实体、概念、关系、主张与综合页；Keeper 维护有限但可重写的活动记忆，Bookkeeper 用信息差、认知差、执行差决定下一轮补什么。站点、课程、时间线与知识图谱只是同一份可追溯事实的不同投影。",
        "MoonBook puts documents, wiki, memory, and tools in one versioned workspace. Raw evidence becomes entities, concepts, relationships, claims, and synthesis. Keeper maintains bounded rewriteable memory; Bookkeeper uses three gaps to choose what to close next. Sites, courses, timelines, and knowledge graphs are projections of the same traceable truth.",
      ),
      opc: bi(
        "它是 OPC 的组织记忆和复利机制：客户上下文、决策依据、失败经验与标准流程不会随会话蒸发。",
        "It is the OPC’s organizational memory and compounding mechanism: customer context, rationale, failures, and playbooks survive sessions.",
      ),
      strengths: [
        bi(
          "三差驱动的 Bookkeeper 评审与路由", "Three-gap Bookkeeper review and routing",
        ),
        bi(
          "Raw → Wiki → Claims → Synthesis 证据谱系", "Raw → Wiki → Claims → Synthesis lineage",
        ),
        bi(
          "站点、课程、时间线与知识图谱投影", "Site, course, timeline, and knowledge-graph projections",
        ),
      ],
      interfaces: ["MoonClaw", "Moontown", "MoonDesk", "MoonFlow"],
      evidence: bi(
        "公开仓库；页面展示由真实 MoonBook 工作区生成的可执行书籍站点投影。持久化 Wiki、Keeper 记忆、评审与多种投影已实现；领域级主张推理仍偏启发式。",
        "Public repository; the page shows an executable-book site projection generated from a real MoonBook workspace. Persistent wiki, Keeper memory, review, and projections exist; domain claim reasoning remains partly heuristic.",
      ),
    },
    {
      slug: "moontown",
      name: "Moontown",
      cn: "月城",
      kind: Core,
      stage: Alpha,
      github: "https://github.com/vectie/moontown",
      visual: "town",
      philosophy: bi(
        "组织不是被设计出来的，而是在日程与路由之间自下而上涌现的。",
        "Organizations are not designed into existence; they emerge bottom-up between cadence and routing.",
      ),
      intro: bi(
        "自下而上的智能体社会与自治控制面，让多个 Book、Claw 与居民角色在长期目标下形成一座可观察的城镇。",
        "A bottom-up agent society and autonomous control plane where books, claws, and resident roles form an observable town.",
      ),
      deep_dive: bi(
        "Moontown 管理常驻目标、调度、路由、隔离、健康、Mayor 监督与跨 Book 综合，但不夺走领域事实所有权。知识留在 MoonBook，执行留在 MoonClaw；城镇只决定何时把什么交给谁，并记录结果。场景 UI 把多智能体活动变成居民、建筑、路线、异常和能量状态。",
        "Moontown manages standing goals, scheduling, routing, isolation, health, Mayor supervision, and cross-book synthesis without stealing domain truth. Knowledge stays in MoonBook and execution in MoonClaw; the town decides when, what, and whom, then records outcomes. Its scene UI makes multi-agent activity observable.",
      ),
      opc: bi(
        "它把一个人的公司从散落自动化升级为有节奏、有责任边界、有异常恢复的自治组织，让创始人以 Mayor 身份管理制度而不是追任务。",
        "It upgrades scattered automation into a paced, bounded, recoverable autonomous organization so the founder governs as Mayor instead of chasing tasks.",
      ),
      strengths: [
        bi(
          "常驻目标、周期调度与 Mayor 监督", "Standing goals, cadence, and Mayor supervision",
        ),
        bi(
          "跨 Book 路由与领域隔离", "Cross-book routing with domain isolation",
        ),
        bi(
          "居民状态、城镇场景与异常恢复", "Resident state, town scenes, and recovery",
        ),
      ],
      interfaces: ["MoonBook", "MoonClaw", "MoonDesk", "MoonFlow"],
      evidence: bi(
        "公开仓库；本地监督守护进程、长期观察和场景 UI 已实现。页面画面由仓库真实建筑、居民与场景布局资产组合；生产部署、备份、鉴权与多日恢复证据仍待补齐。",
        "Public repository; supervised daemon, standing watches, and scene UI exist. The shown scene is composed from real repository buildings, residents, and layout assets; production deployment, backup, auth, and multi-day recovery proof remain incomplete.",
      ),
    },
    {
      slug: "moonflow",
      name: "MoonFlow",
      cn: "月流",
      kind: Core,
      stage: Open,
      github: "https://github.com/vectie/moonflow",
      visual: "flow",
      philosophy: bi(
        "编排的真谛是敬畏失败：每一次执行都必须失败闭合、可恢复、可重放。",
        "Orchestration begins with respect for failure: every execution must fail closed, recover, and replay.",
      ),
      intro: bi(
        "自上而下的任务实现与证据编排层，把源意图转译成依赖图、尝试、策略决定和可恢复状态。",
        "A top-down implementation and evidence orchestration layer translating intent into dependency graphs, attempts, policy decisions, and recoverable state.",
      ),
      deep_dive: bi(
        "MoonFlow 刻意不做智能体：它没有人格、模型循环或自调度。MoonBook 提供源意图，MoonClaw 做推理与执行，MoonFlow 按依赖、幂等键、修订、验收标准和证据身份推进已声明工作。失败不会覆盖历史，而是形成新的尝试与决策收据。",
        "MoonFlow deliberately is not an agent. MoonBook provides source intent, MoonClaw reasons and executes, and MoonFlow advances declared work through dependencies, idempotency keys, revisions, acceptance criteria, and evidence identity. Failure creates a new attempt and receipt instead of rewriting history.",
      ),
      opc: bi(
        "它是 OPC 的交付纪律：把一个人脑中的目标变成不会因并发智能体、重试或中断而失控的工作图。",
        "It is delivery discipline for an OPC: goals become work graphs that survive parallel agents, retries, and interruption.",
      ),
      strengths: [
        bi(
          "依赖图、幂等尝试与恢复状态", "Dependency graphs, idempotent attempts, recovery state",
        ),
        bi(
          "验收标准与证据身份绑定", "Acceptance criteria bound to evidence identity",
        ),
        bi(
          "清晰分离推理、意图与编排", "Clean separation of reasoning, intent, and orchestration",
        ),
      ],
      interfaces: ["MoonBook", "MoonClaw", "MoonDesk", "MoonMold", "MoonCast"],
      evidence: bi(
        "公开仓库；事件流、适配器、修订与证据谱系已实现。它是编排层，不应被宣传为自治智能体。",
        "Public repository; event streams, adapters, revisions, and evidence lineage exist. It is orchestration, not an autonomous agent.",
      ),
    },
  ]
}
