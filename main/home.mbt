///|
fn product_row(product : Product, index : Int, lang : Lang) -> @rabbita.Html {
  let suffix = if lang == Zh { "zh" } else { "en" }
  article(class="product-row", [
    div(class="product-number", two_digit(index + 1)),
    div(class="product-summary", [
      div(class="product-name", [
        h3(product.name),
        span(product.cn),
        stage_view(product, lang),
      ]),
      p(class="philosophy", "“\{product.philosophy.get(lang)}”"),
      p(product.intro.get(lang)),
      a(
        class="text-link",
        href="/products/\{product.slug}/?lang=\{suffix}",
        escape=true,
        [
          span(
            if lang == Zh {
              "阅读进阶介绍"
            } else {
              "Read the advanced brief"
            },
          ),
          span("↗"),
        ],
      ),
    ]),
    product_visual(product),
  ])
}

///|
fn case_card(product : Product, lang : Lang) -> @rabbita.Html {
  let suffix = if lang == Zh { "zh" } else { "en" }
  a(
    href="/products/\{product.slug}/?lang=\{suffix}",
    class="case-card",
    escape=true,
    [
      product_visual(product),
      div(class="case-copy", [
        div([h3(product.name), span(product.cn)]),
        stage_view(product, lang),
        p("“\{product.philosophy.get(lang)}”"),
        small(product.intro.get(lang)),
      ]),
    ],
  )
}

///|
fn home_view(dispatch : Dispatch[Msg], model : Model) -> @rabbita.Html {
  let lang = model.lang
  let steps = loop_steps()
  let active = steps[model.active_step]
  let core = core_products() + platform_products()
  let cases = case_products()
  let core_views : Array[@rabbita.Html] = []
  for index, product in core {
    core_views.push(product_row(product, index, lang))
  }
  let case_views : Array[@rabbita.Html] = []
  for product in cases {
    case_views.push(case_card(product, lang))
  }
  let tab_views : Array[@rabbita.Html] = []
  for index, step in steps {
    tab_views.push(
      button(
        class=if model.active_step == index { "active" } else { "" },
        type_="button",
        on_click=dispatch(SelectStep(index)),
        attrs=@html.Attrs::build()
          .role("tab")
          .aria_selected(
            if model.active_step == index {
              "true"
            } else {
              "false"
            },
          ),
        [span(two_digit(index + 1)), b(step.title.get(lang))],
      ),
    )
  }
  main_([
    nav_view(dispatch, model),
    section(id="top", class="hero", [
      div(class="hero-grain", ""),
      div(class="hero-copy", [
        p(class="eyebrow", "AGENT OS · OPC OS · OPEN SOURCE"),
        h1(
          if lang == Zh {
            [span("让软件，"), em("成为组织。")]
          } else {
            [span("Let software "), em("become the company.")]
          },
        ),
        p(
          class="hero-lead",
          if lang == Zh {
            "Moonsuite 是为一人公司构建的智能体操作系统。它让智能体不只使用软件，也能感知软件、扩展软件、验证结果，并把被证明有效的能力写回组织。"
          } else {
            "Moonsuite is the agent operating system for the one-person company. Agents do not merely use software—they sense it, extend it, verify outcomes, and write proven capability back into the organization."
          },
        ),
        div(class="hero-actions", [
          a(href="#loop", class="button button-primary", escape=true, [
            span(
              if lang == Zh {
                "进入自进化闭环"
              } else {
                "Enter the evolution loop"
              },
            ),
            span("↘"),
          ]),
          a(
            href="https://github.com/vectie",
            class="button button-ghost",
            escape=true,
            [span("GitHub "), span("↗")],
          ),
        ]),
        div(class="hero-proof", [
          span([
            b("12"),
            span(
              if lang == Zh {
                "产品 / 案例"
              } else {
                "products / cases"
              },
            ),
          ]),
          span([
            b("01"),
            span(
              if lang == Zh {
                "统一 Agent OS"
              } else {
                "unified Agent OS"
              },
            ),
          ]),
          span([
            b("∞"),
            span(
              if lang == Zh {
                "软件自举方向"
              } else {
                "software bootstrap"
              },
            ),
          ]),
        ]),
      ]),
      div(class="hero-orbit", attrs=@html.Attrs::build().aria_hidden("true"), [
        div(class="moon-sphere", [div(class="moon-cut", ""), span("OPC")]),
        div(class="orbit orbit-a", [i("Claw"), i("Book"), i("Flow")]),
        div(class="orbit orbit-b", [i("Town"), i("Gate"), i("Desk")]),
        p("SOFTWARE\n↕\nAGENT"),
      ]),
      p(
        class="hero-aside",
        "VECTIE / 向量贴贴\nSHANGHAI · OPEN WORLD\n2026 — ∞",
      ),
    ]),
    section(class="manifesto section-pad", [
      p(class="section-index", "00 / THESIS"),
      div([
        p(
          class="eyebrow",
          if lang == Zh {
            "我们的核心判断"
          } else {
            "Our central thesis"
          },
        ),
        blockquote(
          if lang == Zh {
            "未来的软件不会等待下一次版本发布。它会观察自己、决定自己缺什么，并在证据允许时改写自己。"
          } else {
            "Future software will not wait for the next release. It will observe itself, decide what it lacks, and rewrite itself when evidence permits."
          },
        ),
      ]),
    ]),
    section(id="loop", class="loop-section section-pad", [
      div(class="section-heading", [
        p(class="section-index", "01 / LOOP"),
        div([
          p(class="eyebrow", "AGENT ↔ SOFTWARE"),
          h2(
            if lang == Zh {
              "软件开始自举。"
            } else {
              "Software begins to bootstrap."
            },
          ),
        ]),
        p(
          if lang == Zh {
            "闭环不是自动化流程的另一种说法。它要求系统区分任务完成与能力增长，并对每次改变保留回滚权。"
          } else {
            "The loop is not another name for automation. It distinguishes task completion from capability growth and preserves the right to revert every change."
          },
        ),
      ]),
      div(class="loop-console", [
        div(
          class="loop-tabs",
          attrs=@html.Attrs::build()
            .role("tablist")
            .aria_label("Agent software loop"),
          tab_views,
        ),
        div(class="loop-stage", [
          div(class="loop-diagram", [
            div(class="loop-object software", [
              small("OBJECT 01"),
              b("SOFTWARE"),
              span(
                if lang == Zh {
                  "现有能力"
                } else {
                  "existing capability"
                },
              ),
            ]),
            div(class="loop-current", [
              span(two_digit(model.active_step + 1)),
              i(""),
              i(""),
              i(""),
            ]),
            div(class="loop-object agent", [
              small("ACTOR 01"),
              b("AGENT"),
              span(if lang == Zh { "有界行动" } else { "bounded action" }),
            ]),
          ]),
          div(class="loop-explain", [
            p(
              class="eyebrow",
              "CURRENT PHASE · \{two_digit(model.active_step + 1)}",
            ),
            h3(active.title.get(lang)),
            p(active.copy.get(lang)),
            div(class="decision-strip", [
              span(
                if lang == Zh {
                  "已有能力 → 使用"
                } else {
                  "capable → use"
                },
              ),
              span(
                if lang == Zh {
                  "能力缺口 → 编码"
                } else {
                  "gap → code"
                },
              ),
              span(
                if lang == Zh {
                  "超预期 → 固化"
                } else {
                  "exceeds → claim"
                },
              ),
              span(
                if lang == Zh {
                  "低预期 → 回滚"
                } else {
                  "misses → revert"
                },
              ),
            ]),
          ]),
        ]),
      ]),
    ]),
    section(id="system", class="system-section section-pad", [
      div(class="section-heading", [
        p(class="section-index", "02 / AGENT OS"),
        div([
          p(class="eyebrow", "THE CORE SYSTEM"),
          h2(
            if lang == Zh {
              "一套系统，七种组织能力。"
            } else {
              "One system. Seven organizational powers."
            },
          ),
        ]),
        p(
          if lang == Zh {
            "每个产品只拥有一种清晰职责。组合之后，它们形成 OPC 的运行时、记忆、社会、交付、桌面、模型入口和企业权威。"
          } else {
            "Each product owns one clear responsibility. Together they form the OPC runtime, memory, society, delivery discipline, desktop, model gate, and institutional authority."
          },
        ),
      ]),
      div(class="product-list", core_views),
    ]),
    interaction_view(lang),
    section(id="cases", class="cases-section section-pad", [
      div(class="section-heading", [
        p(class="section-index", "04 / WORLDS"),
        div([
          p(class="eyebrow", "BUILT WITH THE SYSTEM"),
          h2(
            if lang == Zh {
              "Agent OS 进入真实世界。"
            } else {
              "Agent OS enters real worlds."
            },
          ),
        ]),
        p(
          if lang == Zh {
            "机器人、月球、3D、内容与研究不是分散副产品，而是同一套 Agent OS 在不同世界对象上的实例。"
          } else {
            "Robotics, lunar deployment, 3D, media, and research are not scattered side projects—they are instances of one Agent OS applied to different world objects."
          },
        ),
      ]),
      div(class="case-grid", case_views),
    ]),
    china_section(lang),
    zpc_section(lang),
    footer_view(lang),
  ])
}

///|
fn interaction_view(lang : Lang) -> @rabbita.Html {
  let names = [
    "MoonDesk", "MoonFlow", "Moontown", "MoonClaw", "MoonBook", "MoonGate", "MoonProj",
  ]
  let zh = [
    "把目标写进可执行文档", "拆成可验收工作图", "分配居民与节奏",
    "执行、编码、测试", "收敛证据与三差", "路由模型与成本",
    "授权真实业务效果",
  ]
  let en = [
    "capture an executable goal", "compile an acceptable work graph", "assign residents and cadence",
    "execute, code, and test", "converge evidence and three gaps", "route models and cost",
    "authorize real business effects",
  ]
  let rail : Array[@rabbita.Html] = []
  for index, name in names {
    rail.push(
      div([
        span(two_digit(index + 2)),
        b(name),
        small(if lang == Zh { zh[index] } else { en[index] }),
        i(""),
      ]),
    )
  }
  section(class="interaction-section section-pad", [
    div(class="section-heading compact-heading", [
      p(class="section-index", "03 / INTERACTION"),
      div([
        p(class="eyebrow", "ONE OPC DAY"),
        h2(
          if lang == Zh {
            "目标进入，能力留下。"
          } else {
            "A goal enters. Capability remains."
          },
        ),
      ]),
    ]),
    div(class="interaction-map", [
      div(class="founder-node", [
        span("01"),
        b(if lang == Zh { "创始人" } else { "Founder" }),
        small(
          if lang == Zh {
            "目标 · 权限 · 验收"
          } else {
            "goal · authority · acceptance"
          },
        ),
      ]),
      div(class="interaction-rail", rail),
      div(class="reward-node", [
        span("09"),
        b(if lang == Zh { "组织升级" } else { "Org upgrade" }),
        small(
          if lang == Zh {
            "记忆 · 工具 · 新能力"
          } else {
            "memory · tools · capability"
          },
        ),
      ]),
    ]),
  ])
}

///|
fn china_section(lang : Lang) -> @rabbita.Html {
  let suffix = if lang == Zh { "zh" } else { "en" }
  section(class="china-section section-pad", [
    div(class="china-mark", "中"),
    div([
      p(class="eyebrow", "CHINA MARKET / 中国市场"),
      h2(
        if lang == Zh {
          "先成为中国 OPC 的开源 Agent OS。"
        } else {
          "Become the open Agent OS for China’s OPCs first."
        },
      ),
      p(
        if lang == Zh {
          "不是把英文网站翻译成中文，而是从模型、部署、数据、渠道、案例和合规边界上成为本地产品。用 180 天完成从技术可信到首批付费设计伙伴的验证。"
        } else {
          "This is not an English site translated into Chinese. It means becoming local in models, deployment, data, channels, cases, and compliance. The 180-day plan moves from technical trust to paid design partners."
        },
      ),
      a(
        href="/plan/?lang=\{suffix}",
        class="button button-primary",
        escape=true,
        [
          span(
            if lang == Zh {
              "查看中英双语进入计划"
            } else {
              "Read the bilingual market plan"
            },
          ),
          span("↗"),
        ],
      ),
    ]),
    div(class="china-phases", [
      span([
        b("0–30"),
        span(if lang == Zh { "可信基础" } else { "trust base" }),
      ]),
      span([
        b("31–90"),
        span(if lang == Zh { "设计伙伴" } else { "design partners" }),
      ]),
      span([
        b("91–180"),
        span(if lang == Zh { "可复制增长" } else { "repeatable growth" }),
      ]),
    ]),
  ])
}

///|
fn zpc_section(lang : Lang) -> @rabbita.Html {
  section(class="zpc-section", [
    p(class="eyebrow", "ONE MORE THING"),
    div(class="zpc-zero", "0"),
    div(class="zpc-copy", [
      p(class="section-index", "05 / ZPC"),
      h2(
        if lang == Zh {
          "零人公司，不是无人负责。"
        } else {
          "Zero-person does not mean nobody is responsible."
        },
      ),
      p(
        if lang == Zh {
          "ZPC 是 OPC 的渐近线：组织能在稳态目标、明确权限、可逆行动和持续证据下长期运行；人不再充当每一步的发动机，而成为宪法制定者、资产所有者和最终责任人。真正的自主不是把人移除，而是把责任写进系统。"
        } else {
          "ZPC is the asymptote of OPC: an organization that can run under steady-state goals, explicit authority, reversible action, and continuous evidence. People become constitutional designers, asset owners, and final accountable parties. Autonomy does not remove responsibility; it encodes it."
        },
      ),
      div(class="zpc-rule", [
        span("STEADY STATE"),
        b("Goal × Authority × Evidence × Reversibility"),
      ]),
    ]),
  ])
}
