///|
fn platform_products() -> Array[Product] {
  [
    {
      slug: "moondesk",
      name: "MoonDesk",
      cn: "月台",
      kind: Core,
      stage: Alpha,
      github: "https://github.com/vectie/moondesk",
      visual: "desk",
      philosophy: bi(
        "最好的智能体界面不是替人思考，而是让人看见、介入并授权机器的思考。",
        "The best agent interface does not think instead of people; it lets people see, intervene in, and authorize machine thought.",
      ),
      intro: bi(
        "智能体生成、定制与操作桌面，以 executable document 为中心统一 MoonWiki、MoonCode、评审和可移植 app-tool。",
        "An agent creation and operations desktop centered on executable documents—uniting MoonWiki, MoonCode, review, and portable app-tools.",
      ),
      deep_dive: bi(
        "MoonDesk 是人类操作壳，不复制调度或执行能力。用户浏览 MoonBook、整理 inbox、在 MoonWiki 修改“书说什么”，在 MoonCode 修改“书会做什么”，检查 MoonClaw 运行证据，再把上下文提交给 Moontown。每一本书都能携带技能、Schema、Miniapp 或工具，成为可移植 executable document。",
        "MoonDesk is the human operator shell, not another scheduler or executor. Users browse MoonBooks, stage inbox material, edit what a book says in MoonWiki and what it can do in MoonCode, inspect MoonClaw evidence, and submit context to Moontown. Every book can carry skills, schemas, miniapps, or tools as a portable executable document.",
      ),
      opc: bi(
        "它给 OPC 创始人一个统一驾驶舱：定制岗位智能体、审查改动、批准工具、复用业务书，而不必在终端和后台间切换。",
        "It gives the OPC founder one cockpit to customize role agents, review changes, approve tools, and reuse business books.",
      ),
      strengths: [
        bi(
          "MoonWiki / MoonCode 双模式文档", "MoonWiki / MoonCode dual-mode documents",
        ),
        bi(
          "运行证据、Diff、测试与打包评审", "Runtime evidence, diff, test, and package review",
        ),
        bi(
          "可移植 app-tool 与通用 Book 模板", "Portable app-tools and reusable Book templates",
        ),
      ],
      interfaces: ["MoonBook", "MoonClaw", "Moontown", "MoonFlow"],
      evidence: bi(
        "公开仓库；本地单用户 Alpha 可用。生产发行仍需签名、更新托管、净机验证与长稳测试。",
        "Public repository; usable local single-user alpha. Production distribution still needs signing, hosted updates, clean-machine validation, and endurance proof.",
      ),
    },
    {
      slug: "moongate",
      name: "MoonGate",
      cn: "月门",
      kind: Core,
      stage: Alpha,
      github: "https://github.com/vectie/moongate",
      visual: "gate",
      philosophy: bi(
        "模型能力只有穿过可观测、可路由、可降级的门，才会成为可靠基础设施。",
        "Model capability becomes infrastructure only after passing through an observable, routable, degradable gate.",
      ),
      intro: bi(
        "智能体 AI 接入与数据收集网关，统一供应商兼容、用量、价格、故障转移、熔断和套件状态。",
        "The agent AI access and telemetry gateway unifying providers, usage, price, failover, circuit breaking, and suite status.",
      ),
      deep_dive: bi(
        "MoonGate 是本地优先的代理与统计平面，兼容主流国内外模型协议和套件适配器。它记录请求、会话、用量与价格，执行供应商路由、健康检查、故障转移和熔断；同时明确不拥有 MoonBook 的事实、MoonClaw 的执行或 Moontown 的调度。",
        "MoonGate is a local-first proxy and statistics plane compatible with major domestic and global model protocols. It records requests, sessions, usage, and price; performs routing, health checks, failover, and circuit breaking; and explicitly does not own MoonBook truth, MoonClaw execution, or Moontown scheduling.",
      ),
      opc: bi(
        "它让 OPC 按任务选择国内外模型、控制成本、保留审计，并在单一供应商失效时自动降级。",
        "It lets an OPC select domestic or global models by task, control spend, retain audit, and fail over when one provider breaks.",
      ),
      strengths: [
        bi(
          "多协议、多供应商兼容与路由", "Multi-protocol, multi-provider routing",
        ),
        bi(
          "用量、价格、请求日志与会话统计", "Usage, price, request logs, and session statistics",
        ),
        bi(
          "熔断、流检查与故障转移", "Circuit breakers, stream checks, and failover",
        ),
      ],
      interfaces: ["MoonClaw", "MoonBook", "Moontown", "MoonDesk"],
      evidence: bi(
        "公开仓库；后端与主要集成已具备，当前重点是真实工作流验证、模块拆分与发布硬化。",
        "Public repository; backend and major integrations exist. Current work focuses on real-workflow validation, modularization, and release hardening.",
      ),
    },
    {
      slug: "moonproj",
      name: "MoonProj",
      cn: "月企",
      kind: Core,
      stage: Building,
      github: "",
      visual: "erp",
      philosophy: bi(
        "智能体可以建议与执行，但组织的权力、账本与责任必须仍由组织本身拥有。",
        "Agents may advise and execute, but authority, ledgers, and accountability must remain owned by the organization.",
      ),
      intro: bi(
        "智能体管理的企业 ERP / Company OS，以法人、权限、财务、税务、资金、投资与审计为本地权威。",
        "An agent-managed ERP / Company OS where legal identity, authority, finance, tax, treasury, investment, and audit remain locally authoritative.",
      ),
      deep_dive: bi(
        "MoonProj 不是给 ERP 加聊天框，而是把公司建模为权利与责任系统。法人、组织、项目、交易对手、总账、预算、付款、税务、融资、投资和证据都有明确本地所有权；智能体输出始终是不可信输入，只有经过授权、预算、会计与职责分离规则才可能产生业务效果。",
        "MoonProj does not add chat to ERP; it models the company as a system of rights and obligations. Legal entities, projects, counterparties, ledger, budget, payment, tax, financing, investment, and evidence have explicit local ownership. Agent output remains untrusted until authority, budget, accounting, and segregation-of-duties rules accept it.",
      ),
      opc: bi(
        "它让 OPC 在极少人力下仍保持机构级控制：智能体可以准备采购、开票、预算或投资建议，但不能绕过审批、支付和入账边界。",
        "It gives an OPC institution-grade control: agents may prepare procurement, invoices, budgets, or investment proposals, but cannot bypass approval, payment, or posting.",
      ),
      strengths: [
        bi(
          "法人、组织与授权的本地权威模型", "Local authority for legal entity and organization",
        ),
        bi(
          "财务、资金、税务、投资与审计边界", "Finance, treasury, tax, investment, and audit boundaries",
        ),
        bi(
          "影子迁移、证据对账与可回滚切换", "Shadow migration, reconciliation, and reversible cutover",
        ),
      ],
      interfaces: ["MoonClaw", "MoonGate", "MoonDesk"],
      evidence: bi(
        "早期实现；公开 GitHub 入口当前不可验证。既有 ERP 仍是权威，生产切换需要业务 owner 与真实数据闸门。",
        "Early implementation; no public GitHub entry is currently verifiable. Existing ERP remains authoritative and production cutover needs owner and real-data gates.",
      ),
    },
  ]
}

///|
fn case_products() -> Array[Product] {
  [
    {
      slug: "moonrobo",
      name: "MoonRobo",
      cn: "月机",
      kind: Case,
      stage: Alpha,
      github: "https://github.com/vectie/moonrobo",
      visual: "robo",
      philosophy: bi(
        "机器人不是被智能体控制的肢体，而是必须用证据与安全边界协商行动的现实伙伴。",
        "A robot is not an agent-controlled limb; it is a physical partner whose action must be negotiated through evidence and safety boundaries.",
      ),
      intro: bi(
        "线上智能体与线下机器人融合平台，把感知、遥测、校准、安全闸门与有界动作接入同一证据循环。",
        "A platform joining online agents and physical robots through sensing, telemetry, calibration, safety gates, and bounded action.",
      ),
      deep_dive: bi(
        "MoonRobo 把机器人状态视为需要持续验证的世界模型。智能体可以提出动作、分析遥测和生成适配器，但真实执行必须经过设备能力、姿态、环境、能量和人工权限的闸门。线上推理与线下动作之间保留模拟、回放、急停和证据收据。",
        "MoonRobo treats robot state as a continuously verified world model. Agents may propose motion, analyze telemetry, and generate adapters, but execution passes device, pose, environment, energy, and human-authority gates. Simulation, replay, emergency stop, and evidence receipts separate online reasoning from physical action.",
      ),
      opc: bi(
        "它让一人团队能用同一套 Agent OS 运维少量实体设备，同时不把安全责任交给概率模型。",
        "It lets one person operate a small physical fleet through the same Agent OS without assigning safety responsibility to a probabilistic model.",
      ),
      strengths: [
        bi(
          "遥测与动作证据同轨", "Telemetry and action on one evidence rail",
        ),
        bi(
          "设备能力、校准与安全闸门", "Capability, calibration, and safety gates",
        ),
        bi(
          "模拟、回放、急停与人工接管", "Simulation, replay, emergency stop, takeover",
        ),
      ],
      interfaces: ["MoonClaw", "MoonBook", "Moontown", "MoonGate"],
      evidence: bi(
        "公开仓库；仿真与设备适配正在演进，真实场地长期安全证据仍待补齐。",
        "Public repository; simulation and adapters are evolving, while long-running field-safety evidence remains incomplete.",
      ),
    },
    {
      slug: "moonmoon",
      name: "MoonMoon",
      cn: "月月",
      kind: Case,
      stage: Alpha,
      github: "https://github.com/vectie/moonmoon",
      visual: "lunar",
      philosophy: bi(
        "在最遥远的环境里，自主的前提不是勇敢，而是证据、能量与可逆决策。",
        "In the most distant environment, autonomy begins not with bravery but with evidence, energy, and reversible decisions.",
      ),
      intro: bi(
        "智能体机器人月球部署平台，用地形、光照、能量、风险和路线证据约束月面决策。",
        "An agent-robot lunar deployment platform constraining surface decisions with terrain, light, energy, risk, and route evidence.",
      ),
      deep_dive: bi(
        "MoonMoon 把月面任务拆成数据权威、路线候选、运动适配和操作员决策。地形与光照是证据源，路线是可比较候选，机器人运动只是非权威预览；只有能量余量、坡度、粗糙度、通信窗口与任务权限同时满足，动作才可能被释放。",
        "MoonMoon separates lunar missions into data authority, route candidates, motion adapters, and operator decisions. Terrain and light are evidence, routes are comparable candidates, and robot motion is a non-authoritative preview. Action is released only when energy, slope, roughness, communications, and mission authority align.",
      ),
      opc: bi(
        "它展示 OPC OS 如何在高风险、低人力、长延迟环境中把判断压缩为清晰闸门。",
        "It shows how an OPC OS compresses judgment into explicit gates in high-risk, low-staff, high-latency environments.",
      ),
      strengths: [
        bi(
          "地形、光照与路线证据面", "Terrain, lighting, and route evidence",
        ),
        bi(
          "权威数据与运动预览分离", "Authority separated from motion preview",
        ),
        bi(
          "能量、风险和任务权限联合闸门", "Joint energy, risk, and mission gates",
        ),
      ],
      interfaces: ["MoonRobo", "MoonClaw", "MoonBook", "MoonFlow"],
      evidence: bi(
        "公开仓库；可信方格与路线证据界面已实现。真实月面部署仍属于长期研发。",
        "Public repository; trusted-square and route-evidence surfaces exist. Actual lunar deployment remains long-term R&D.",
      ),
    },
    {
      slug: "moonmold",
      name: "MoonMold",
      cn: "月模",
      kind: Case,
      stage: Building,
      github: "https://github.com/vectie/moonmold",
      visual: "mold",
      philosophy: bi(
        "设计的可信度来自每次表示转换都知道自己保留了什么、丢失了什么。",
        "Design becomes trustworthy when every representation change knows what it preserves and what it loses.",
      ),
      intro: bi(
        "智能体驱动的 3D 设计平台，保持可编辑源、模拟、制造与展示表示之间的谱系。",
        "An agentic 3D design platform preserving lineage among editable source, simulation, manufacturing, and presentation.",
      ),
      deep_dive: bi(
        "MoonMold 让智能体生成和修改参数化 3D 资产，同时把需求、约束、版本、仿真与导出结果放在同一工作图里。每次格式转换都记录可编辑性、精度和语义损失，避免漂亮渲染被误认为可制造事实。",
        "MoonMold lets agents generate and revise parametric 3D assets while keeping requirements, constraints, versions, simulation, and exports in one work graph. Each format conversion records editability, precision, and semantic loss so a beautiful render is never mistaken for manufacturable truth.",
      ),
      opc: bi(
        "它让独立设计者把建模、验证、版本与客户展示交给智能体流水线，同时保留最终工程判断。",
        "It lets an independent designer delegate modeling, validation, versioning, and client presentation while retaining final engineering judgment.",
      ),
      strengths: [
        bi(
          "参数化可编辑源与版本谱系", "Parametric editable source and version lineage",
        ),
        bi(
          "仿真、制造与展示边界", "Simulation, manufacturing, and presentation boundaries",
        ),
        bi(
          "表示转换的已知损失记录", "Known-loss receipts for representation changes",
        ),
      ],
      interfaces: ["MoonFlow", "MoonBook", "MoonClaw", "MoonDesk"],
      evidence: bi(
        "公开仓库；产品仍处建设阶段，制造级验证与商业案例需要继续积累。",
        "Public repository; the product is still being built and needs manufacturing-grade validation and commercial cases.",
      ),
    },
    {
      slug: "mooncast",
      name: "MoonCast",
      cn: "月播",
      kind: Case,
      stage: Alpha,
      github: "https://github.com/vectie/mooncast",
      visual: "cast",
      philosophy: bi(
        "内容生成不是灵感喷发，而是版权、预算、镜头、质量与交付共同约束的生产系统。",
        "Content generation is not inspiration on demand; it is a production system constrained by rights, budget, shots, quality, and delivery.",
      ),
      intro: bi(
        "智能体加持的 AIGC 平台，把策划、素材、生成、编辑、质检与客户评审连成证据轨。",
        "An agentic AIGC platform connecting planning, assets, generation, editing, quality control, and client review on one evidence rail.",
      ),
      deep_dive: bi(
        "MoonCast 将长内容生产建模为确定性工作图。脚本、分镜、素材权利、供应商调用、镜头状态、音视频编码、成本与客户反馈都有明确身份；失败镜头可以局部重试，已验收资产不会被全局重生成覆盖。",
        "MoonCast models long-form production as a deterministic work graph. Scripts, storyboards, asset rights, provider calls, shot state, encoding, cost, and client feedback have explicit identities. Failed shots retry locally without overwriting accepted assets.",
      ),
      opc: bi(
        "它让小型创作公司用一个人协调原本需要制片、编辑、质检与客户经理共同维护的流程。",
        "It lets one person coordinate the production, editing, QA, and client-review work of a small studio.",
      ),
      strengths: [
        bi(
          "镜头级身份、局部重试与成本证据", "Shot identity, local retries, and cost evidence",
        ),
        bi(
          "版权、生成、编码与质检边界", "Rights, generation, encoding, and QA boundaries",
        ),
        bi(
          "Studio / Editor / Client Review 产品面", "Studio, Editor, and Client Review surfaces",
        ),
      ],
      interfaces: ["MoonFlow", "MoonBook", "MoonClaw", "MoonDesk"],
      evidence: bi(
        "公开仓库；确定性样片与系统化长内容路径已有证据。商业交付与发布仍需显式接入。",
        "Public repository; deterministic fixtures and a systematic long-form path are evidenced. Commercial delivery and publishing still need explicit integration.",
      ),
    },
    {
      slug: "moonfind",
      name: "MoonFind",
      cn: "月寻",
      kind: Case,
      stage: Vision,
      github: "",
      visual: "research",
      philosophy: bi(
        "研究不是找到答案，而是不断重构问题与证据之间的最短可信路径。",
        "Research is not finding an answer; it is continuously rebuilding the shortest credible path between questions and evidence.",
      ),
      intro: bi(
        "面向智能体的 AutoResearch 概念，把问题分解、来源筛选、实验、反证与综合组织成持续研究循环。",
        "An agentic AutoResearch concept organizing decomposition, source screening, experiments, falsification, and synthesis into a continuous loop.",
      ),
      deep_dive: bi(
        "MoonFind 当前是研发方向，而非上线产品。它计划把 MoonClaw 的研究执行、MoonBook 的证据与主张空间、MoonFlow 的依赖图、Moontown 的长期观察和 MoonGate 的模型路由组合为面向问题的研究表面。每个结论都携带来源、置信度、反例、缺失证据与下一实验。",
        "MoonFind is a development direction, not a launched product. It is intended to combine MoonClaw research execution, MoonBook evidence and claims, MoonFlow dependency graphs, Moontown watches, and MoonGate routing into a question-oriented surface. Every conclusion should carry sources, confidence, counterexamples, missing evidence, and a next experiment.",
      ),
      opc: bi(
        "它将成为 OPC 的常驻研究部门：持续观察客户、技术与市场，只有证据改变基线时才打扰创始人。",
        "It is intended as the OPC’s resident research department, interrupting the founder only when evidence changes the baseline.",
      ),
      strengths: [
        bi(
          "问题图与证据图联合演化（规划）", "Co-evolving question and evidence graphs (planned)",
        ),
        bi(
          "反证、置信度与缺口显式化（规划）", "Explicit falsification, confidence, and gaps (planned)",
        ),
        bi(
          "长期观察只报告基线变化（规划）", "Standing watches report baseline changes only (planned)",
        ),
      ],
      interfaces: ["MoonClaw", "MoonBook", "MoonFlow", "Moontown", "MoonGate"],
      evidence: bi(
        "开发中、未上线；未发现公开仓库。页面内容是基于套件边界的产品设计提案。",
        "In development and not launched; no public repository is currently discoverable. This page is a product-design proposal based on suite boundaries.",
      ),
    },
  ]
}

///|
fn products() -> Array[Product] {
  core_products() + platform_products() + case_products()
}

///|
fn product_by_slug(slug : String) -> Product? {
  for product in products() {
    if product.slug == slug {
      return Some(product)
    }
  }
  None
}

///|
fn loop_steps() -> Array[LoopStep] {
  [
    {
      title: bi("感知", "Sense"),
      copy: bi(
        "读取软件、组织状态、记忆与真实反馈。", "Read software, organizational state, memory, and real feedback.",
      ),
    },
    {
      title: bi("决策", "Decide"),
      copy: bi(
        "判断使用现有能力，还是触发代码扩展能力。", "Choose existing capability or trigger code to extend it.",
      ),
    },
    {
      title: bi("执行", "Act"),
      copy: bi(
        "通过有界工具、工作流与权限完成任务。", "Act through bounded tools, workflows, and authority.",
      ),
    },
    {
      title: bi("验证", "Verify"),
      copy: bi(
        "把结果与验收、证据、安全和成本基线比较。", "Compare outcomes with acceptance, evidence, safety, and cost baselines.",
      ),
    },
    {
      title: bi("强化 / 回滚", "Reward / revert"),
      copy: bi(
        "超预期则固化能力；低于预期则回滚并保留学习差距。",
        "Consolidate overperformance; revert underperformance and retain the learning gap.",
      ),
    },
  ]
}
