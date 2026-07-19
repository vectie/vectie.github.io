///|
struct MarketPhase {
  days : String
  title : Bilingual
  copy : Bilingual
}

///|
fn market_phases() -> Array[MarketPhase] {
  [
    {
      days: "0–30",
      title: bi("可信基础", "Trust foundation"),
      copy: bi(
        "统一公开仓库与许可证；发布中文 README、安装器和架构白皮书；接入 Qwen、DeepSeek、Kimi、GLM；形成模型、数据与软件所有权矩阵。",
        "Unify public repos and licenses; ship Chinese READMEs, installers, and an architecture paper; integrate Qwen, DeepSeek, Kimi, and GLM; establish ownership matrices.",
      ),
    },
    {
      days: "31–60",
      title: bi("可用样板", "Usable wedge"),
      copy: bi(
        "选择一个窄入口：OPC Research OS。用 MoonDesk + MoonBook + MoonClaw + Moontown 跑通每周情报、证据更新和创始人摘要，发布可复现 demo 与成本。",
        "Choose one wedge: OPC Research OS. Prove weekly intelligence, evidence updates, and founder briefs with MoonDesk, MoonBook, MoonClaw, and Moontown; publish a reproducible demo and cost profile.",
      ),
    },
    {
      days: "61–90",
      title: bi("设计伙伴", "Design partners"),
      copy: bi(
        "招募 10 位中国独立开发者或小微企业主，覆盖两个垂直领域并每周共创；目标是 3 个连续 30 天运行案例和首批付费部署。",
        "Recruit 10 Chinese indie builders or micro-business owners across two verticals for weekly co-design; target three 30-day cases and the first paid deployments.",
      ),
    },
    {
      days: "91–180",
      title: bi("复制与合规", "Repeat & govern"),
      copy: bi(
        "建立 Gitee 镜像、微信与飞书入口、本地镜像源、国内云和私有化部署；完成 ICP/许可判断、隐私影响评估、AIGC 标识和算法备案适用性评估。",
        "Add Gitee mirrors, Weixin/Feishu entry points, local package mirrors, China-cloud and on-prem deployments; complete ICP, privacy, AIGC labeling, and algorithm-filing analysis.",
      ),
    },
  ]
}

///|
fn plan_view(dispatch : Dispatch[Msg], model : Model) -> @rabbita.Html {
  let lang = model.lang
  let roadmap : Array[@rabbita.Html] = []
  for index, phase in market_phases() {
    roadmap.push(
      article([
        div([span("PHASE \{two_digit(index + 1)}"), b("\{phase.days} DAYS")]),
        h3(phase.title.get(lang)),
        p(phase.copy.get(lang)),
      ]),
    )
  }
  let workstreams = [
    (
      "01", "产品定位 / Positioning", "Agent OS for OPC—not another agent framework. 首发只卖一个结果：一个人拥有可持续运行、可审计、可进化的软件组织。",
    ),
    (
      "02", "本地技术 / Localization", "CN-region provider adapters, Chinese eval set, China-friendly install path, Gitee mirror, domestic cloud images, and offline/on-prem mode.",
    ),
    (
      "03", "信任证据 / Trust", "Public maturity labels, reproducible demos, signed releases, SBOM, threat model, benchmark receipts, rollback videos, and transparent limitations.",
    ),
    (
      "04", "增长渠道 / Go-to-market", "GitHub + Gitee for code; WeChat and video channels for narrative; Feishu groups, V2EX, Juejin, SegmentFault, and founder communities for pilots.",
    ),
    (
      "05", "商业模式 / Business", "Open core remains permissive; monetize deployment, support, private model/data integration, compliance packs, and domain operating books.",
    ),
    (
      "06", "合规边界 / Governance", "B2B/self-hosted first; minimize data and default to China-region storage; map model filing, labeling, identity, complaint, and content controls before public service.",
    ),
  ]
  let stream_views : Array[@rabbita.Html] = []
  for item in workstreams {
    let (number, title, copy) = item
    stream_views.push(article([span(number), h3(title), p(copy)]))
  }
  main_(class="plan-page", [
    nav_view(dispatch, model, compact=true),
    section(class="plan-hero section-pad", [
      p(class="eyebrow", "CHINA MARKET ENTRY · 中英双语计划"),
      h1(
        if lang == Zh {
          "进入中国，不只是进入一个市场。"
        } else {
          "Entering China is not just entering a market."
        },
      ),
      p(
        if lang == Zh {
          "它意味着把 Moonsuite 变成对中国开发者真正可获取、可运行、可相信、可购买、可合规部署的 OPC OS。下面是一份以 180 天为周期、以证据为闸门的进入计划。"
        } else {
          "It means making Moonsuite genuinely accessible, runnable, trustworthy, purchasable, and governable for Chinese builders as an OPC OS. This is a 180-day, evidence-gated plan."
        },
      ),
      div(class="plan-north", [
        span("NORTH STAR"),
        b(
          if lang == Zh {
            "10 个设计伙伴 · 3 个连续运行案例 · 1 个付费可复制入口"
          } else {
            "10 design partners · 3 continuous cases · 1 paid repeatable wedge"
          },
        ),
      ]),
    ]),
    section(class="plan-principles section-pad", [
      p(class="section-index", "01 / STRATEGY"),
      div([
        p(class="eyebrow", "WHAT WE WILL NOT DILUTE"),
        h2(
          if lang == Zh {
            "主线：Agent OS → OPC OS。"
          } else {
            "The line: Agent OS → OPC OS."
          },
        ),
      ]),
      div(class="principle-grid", [
        article([
          span("01"),
          h3(
            if lang == Zh {
              "先 B2B / 自托管"
            } else {
              "B2B / self-hosted first"
            },
          ),
          p(
            if lang == Zh {
              "避开过早面向公众的生成式服务复杂度，以本地优先、企业自有数据和明确 operator 为切口。"
            } else {
              "Avoid premature public-service complexity; lead with local-first operation, enterprise-owned data, and a clear operator."
            },
          ),
        ]),
        article([
          span("02"),
          h3(
            if lang == Zh {
              "先卖结果，不卖宇宙"
            } else {
              "Sell an outcome before a universe"
            },
          ),
          p(
            if lang == Zh {
              "整套架构是护城河，首发产品必须是一个能在 30 天内证明价值的窄场景。"
            } else {
              "The suite is the moat; the launch offer must prove one narrow outcome in 30 days."
            },
          ),
        ]),
        article([
          span("03"),
          h3(
            if lang == Zh {
              "证据先于声量"
            } else {
              "Evidence before volume"
            },
          ),
          p(
            if lang == Zh {
              "公开运行记录、成本、回滚、失败边界和成熟度，比宽泛的自主智能体口号更能建立信任。"
            } else {
              "Public runs, cost, rollback, failure boundaries, and maturity earn more trust than broad autonomy claims."
            },
          ),
        ]),
      ]),
    ]),
    section(class="roadmap-section section-pad", [
      div(class="section-heading compact-heading", [
        p(class="section-index", "02 / 180 DAYS"),
        div([
          p(class="eyebrow", "EVIDENCE-GATED ROADMAP"),
          h2(
            if lang == Zh {
              "四个阶段，每阶段都可停止。"
            } else {
              "Four phases, each with a stop gate."
            },
          ),
        ]),
      ]),
      div(class="roadmap", roadmap),
    ]),
    section(class="workstreams-section section-pad", [
      p(class="section-index", "03 / WORKSTREAMS"),
      div([
        p(class="eyebrow", "SIX PARALLEL SYSTEMS"),
        h2(
          if lang == Zh {
            "市场进入，也是一套操作系统。"
          } else {
            "Market entry is also an operating system."
          },
        ),
      ]),
      div(class="workstreams", stream_views),
    ]),
    compliance_view(lang),
    scorecard_view(lang),
    footer_view(lang),
  ])
}

///|
fn compliance_view(lang : Lang) -> @rabbita.Html {
  section(class="compliance-section section-pad", [
    div([
      p(class="section-index", "04 / CHINA READY"),
      p(class="eyebrow", "COMPLIANCE AS PRODUCT ARCHITECTURE"),
      h2(
        if lang == Zh {
          "把合规做成边界，而不是上线前的清单。"
        } else {
          "Make governance an architecture, not a pre-launch checklist."
        },
      ),
      p(
        if lang == Zh {
          "以下是产品规划建议，不是法律意见。正式上线前应由中国执业律师与属地服务商根据具体业务、主体和数据流确认。"
        } else {
          "This is product-planning guidance, not legal advice. China counsel and local providers should validate it against the actual entity, service, and data flows."
        },
      ),
    ]),
    div(class="compliance-grid", [
      article([
        span("HOSTING"),
        h3(
          if lang == Zh {
            "ICP / 电信许可判断"
          } else {
            "ICP / telecom licensing"
          },
        ),
        p(
          if lang == Zh {
            "中国大陆托管网站需完成 ICP 路径判断；经营性服务、特定内容或外资结构需单独评估许可。"
          } else {
            "Mainland hosting requires an ICP path decision; commercial services, specific content, and foreign-invested structures need separate analysis."
          },
        ),
      ]),
      article([
        span("MODEL"),
        h3(
          if lang == Zh {
            "模型与算法备案"
          } else {
            "Model / algorithm filing"
          },
        ),
        p(
          if lang == Zh {
            "面向公众且具有舆论属性或社会动员能力的生成式服务，需要评估安全评估、算法备案和模型公示义务。"
          } else {
            "Public generative services with public-opinion or mobilization capability require security, filing, and model-disclosure analysis."
          },
        ),
      ]),
      article([
        span("CONTENT"),
        h3(
          if lang == Zh {
            "生成内容标识"
          } else {
            "Generated-content labeling"
          },
        ),
        p(
          if lang == Zh {
            "文本、图像、音视频生成应设计显式与隐式标识、元数据、日志和可追溯内容编号。"
          } else {
            "Text, image, audio, and video generation should support labels, metadata, logs, and traceable content IDs."
          },
        ),
      ]),
      article([
        span("DATA"),
        h3(
          if lang == Zh {
            "个人信息与跨境"
          } else {
            "Personal data / cross-border"
          },
        ),
        p(
          if lang == Zh {
            "默认数据最小化、中国区存储与可删除；跨境模型调用先画清数据流，再判断适用路径。"
          } else {
            "Default to minimization, China-region storage, and deletion. Map every cross-border model call before choosing a legal path."
          },
        ),
      ]),
    ]),
    div(class="source-links", [
      a(
        href="https://www.cac.gov.cn/2023-07/13/c_1690898327029107.htm",
        escape=true,
        "生成式人工智能服务管理暂行办法 ↗",
      ),
      a(
        href="https://www.cac.gov.cn/2025-03/14/c_1743654684782215.htm",
        escape=true,
        "人工智能生成合成内容标识办法 ↗",
      ),
      a(
        href="https://www.cac.gov.cn/2024-03/22/c_1712776612187994.htm",
        escape=true,
        "促进和规范数据跨境流动规定 ↗",
      ),
      a(
        href="https://www.miit.gov.cn/",
        escape=true,
        "工信部 ICP 规则 ↗",
      ),
    ]),
  ])
}

///|
fn scorecard_view(lang : Lang) -> @rabbita.Html {
  section(class="scorecard-section section-pad", [
    p(class="section-index", "05 / SCORECARD"),
    div([
      p(class="eyebrow", "GO / NO-GO METRICS"),
      h2(
        if lang == Zh {
          "不按曝光量前进，按闭环证据前进。"
        } else {
          "Advance by loop evidence, not impressions."
        },
      ),
    ]),
    div(class="score-grid", [
      span([
        b("≥ 70%"),
        span(if lang == Zh { "首周激活" } else { "week-1 activation" }),
      ]),
      span([
        b("≥ 3"),
        span(
          if lang == Zh {
            "30 天稳定案例"
          } else {
            "30-day stable cases"
          },
        ),
      ]),
      span([
        b("≤ 4h"),
        span(
          if lang == Zh {
            "安装到首个价值"
          } else {
            "install to first value"
          },
        ),
      ]),
      span([
        b("≥ 2"),
        span(
          if lang == Zh {
            "付费垂直模板"
          } else {
            "paid vertical books"
          },
        ),
      ]),
      span([
        b("100%"),
        span(
          if lang == Zh {
            "关键行动有证据"
          } else {
            "critical actions evidenced"
          },
        ),
      ]),
      span([
        b("0"),
        span(
          if lang == Zh {
            "未解释越权"
          } else {
            "unexplained authority escapes"
          },
        ),
      ]),
    ]),
  ])
}
