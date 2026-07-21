///|
fn product_row(product : Product, index : Int, lang : Lang) -> @rabbita.Html {
  let suffix = if lang == Zh { "zh" } else { "en" }
  article(class="product-row", [
    div(class="product-number", two_digit(index + 1)),
    div(class="product-summary", [
      div(class="product-name", [
        product_logo(product, "product-mark"),
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
        div([
          product_logo(product, "product-mark"),
          h3(product.name),
          span(product.cn),
        ]),
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
          class="hero-title hero-title-\{if lang == Zh { "zh" } else { "en" }}",
          if lang == Zh {
            [span("软件自我进化，"), em("组织随之生长。")]
          } else {
            [
              span("Software that evolves itself—"),
              em("and the organization with it."),
            ]
          },
        ),
        p(
          class="hero-lead",
          if lang == Zh {
            "Moonsuite 月栖智能体套件，是一套为 One-Person Company 而生的 Agent OS。当智能体感知软件、决定调用还是重写、超预期则固化能力、低于预期则回滚——闭环一旦闭合，软件开始进化，组织也是。"
          } else {
            "Moonsuite is the Agent OS built for the One-Person Company. An agent senses software, chooses whether to use or rewrite it, claims capability when results exceed expectations, and rolls back when they do not. Close the loop, and software—and the organization—begins to evolve."
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
            "让软件成为组织：会感知，会行动，会记忆，也会在证据允许时改写自己。"
          } else {
            "Let software become the organization: able to sense, act, remember, and rewrite itself when evidence permits."
          },
        ),
      ]),
    ]),
    section(id="loop", class="loop-section section-pad", [
      div(class="section-heading", [
        p(class="section-index", "01 / LOOP"),
        div([
          p(class="eyebrow", "SEE THE SOFTWARE CHANGE ITSELF"),
          h2(
            if lang == Zh {
              "一次任务结束，下一次能力已经不同。"
            } else {
              "One task ends. The next starts more capable."
            },
          ),
        ]),
        p(
          if lang == Zh {
            "自进化不是智能体把任务做完，而是被验证的新能力进入软件本身，成为下一轮可以直接调用的起点。"
          } else {
            "Self-evolution is not an agent finishing a task. It is a verified new capability entering the software itself and becoming the next cycle's starting point."
          },
        ),
      ]),
      div(class="loop-console", [
        div(class="loop-contract", [
          div(class="loop-contract-label", [
            span("CONCEPT DEMO"),
            b("OPC TASK 042"),
          ]),
          div([
            small(if lang == Zh { "创始人目标" } else { "FOUNDER GOAL" }),
            p(
              if lang == Zh {
                "每周把新客户访谈变成带引用的市场简报；只有证据置信度 ≥ 0.85 才发送。"
              } else {
                "Turn new customer interviews into a cited market brief every week; send only when evidence confidence is ≥ 0.85."
              },
            ),
          ]),
          div([
            small(
              if lang == Zh {
                "示例验收契约"
              } else {
                "ILLUSTRATIVE CONTRACT"
              },
            ),
            p(
              if lang == Zh {
                "引用完整 · 矛盾可见 · 权限合规 · 评分 ≥ 85"
              } else {
                "Citations complete · contradictions visible · authority valid · score ≥ 85"
              },
            ),
          ]),
        ]),
        div(
          class="loop-tabs",
          attrs=@html.Attrs::build()
            .role("tablist")
            .aria_label("Agent software loop"),
          tab_views,
        ),
        div(class="loop-stage", [
          div(class="loop-evolution", [
            div(class="version-track", [
              div(class="version-node version-baseline", [
                small(
                  if lang == Zh {
                    "本轮基线"
                  } else {
                    "CYCLE BASELINE"
                  },
                ),
                b("research_brief@v12"),
                span(
                  if lang == Zh {
                    "已验证 / 可回滚"
                  } else {
                    "verified / recoverable"
                  },
                ),
              ]),
              div(class="version-arrow", [
                span("→"),
                small(
                  if model.active_step < 2 {
                    if lang == Zh {
                      "发现缺口"
                    } else {
                      "gap found"
                    }
                  } else if model.active_step < 4 {
                    if lang == Zh {
                      "候选变更"
                    } else {
                      "candidate change"
                    }
                  } else if lang == Zh {
                    "验证通过"
                  } else {
                    "verified"
                  },
                ),
              ]),
              div(
                class="version-node version-candidate phase-\{model.active_step + 1}",
                [
                  small(
                    if model.active_step < 2 {
                      if lang == Zh {
                        "能力缺口"
                      } else {
                        "CAPABILITY GAP"
                      }
                    } else if model.active_step < 4 {
                      if lang == Zh {
                        "隔离候选"
                      } else {
                        "ISOLATED CANDIDATE"
                      }
                    } else if lang == Zh {
                      "下一轮基线"
                    } else {
                      "NEXT BASELINE"
                    },
                  ),
                  b(active.capability),
                  span(active.evidence.get(lang)),
                ],
              ),
            ]),
            div(class="capability-diff", [
              div([
                small("− v12"),
                span(if lang == Zh { "线性摘要" } else { "linear summary" }),
              ]),
              div(class="diff-add", [
                small("+ v13"),
                span(
                  if lang == Zh {
                    "矛盾账本 · 证据校验器 · 新测试"
                  } else {
                    "contradiction ledger · evidence checker · new tests"
                  },
                ),
              ]),
            ]),
            div(class="loop-proof-line", [
              span(if lang == Zh { "任务结果" } else { "TASK RESULT" }),
              b("71 → 91"),
              small(
                if lang == Zh {
                  "示例评分 / 100"
                } else {
                  "illustrative score / 100"
                },
              ),
            ]),
          ]),
          div(class="loop-explain", [
            p(
              class="eyebrow",
              "CURRENT PHASE · \{two_digit(model.active_step + 1)}",
            ),
            h3(active.title.get(lang)),
            p(active.copy.get(lang)),
            p(class="loop-state", active.state.get(lang)),
            div(class="loop-evidence", [
              small(
                if lang == Zh {
                  "当前证据"
                } else {
                  "CURRENT EVIDENCE"
                },
              ),
              b(active.evidence.get(lang)),
            ]),
          ]),
        ]),
        div(class="loop-branches", [
          div(class="loop-branch branch-reward", [
            div([
              span("PASS"),
              b(if lang == Zh { "强化 / 晋级" } else { "REWARD / PROMOTE" }),
            ]),
            p(
              if lang == Zh {
                "91 ≥ 85：将代码、测试、执行证据与记忆一起固化为 research_brief@v13。"
              } else {
                "91 ≥ 85: consolidate code, tests, execution evidence, and memory as research_brief@v13."
              },
            ),
          ]),
          div(class="loop-branch branch-revert", [
            div([
              span("FAIL"),
              b(
                if lang == Zh {
                  "回滚 / 留痕"
                } else {
                  "REVERT / RETAIN GAP"
                },
              ),
            ]),
            p(
              if lang == Zh {
                "若 78 < 85：恢复 v12；保留失败证据与能力缺口，但不晋级候选代码。"
              } else {
                "If 78 < 85: restore v12; retain failure evidence and the capability gap, but do not promote candidate code."
              },
            ),
          ]),
        ]),
        div(class="loop-next-cycle", [
          span("WHY SELF-EVOLVING"),
          p(
            if lang == Zh {
              "闭环改变的不是一次任务结果，而是系统下一次能够做什么。下周，v13 已经是起点，创始人无需重新教一遍。"
            } else {
              "The loop changes not only the result of one task, but what the system can do next time. Next week, v13 is already the starting point—the founder does not teach it again."
            },
          ),
          b("v12 → v13 → v14 → …"),
        ]),
      ]),
      div(class="loop-comparison", [
        div([
          span("01 / AUTOMATION"),
          b(
            if lang == Zh {
              "重复固定流程"
            } else {
              "Repeats a fixed workflow"
            },
          ),
          p(
            if lang == Zh {
              "下一轮能力仍然相同。"
            } else {
              "The next cycle has the same capability."
            },
          ),
        ]),
        div([
          span("02 / AGENT"),
          b(
            if lang == Zh {
              "会在会话中适应"
            } else {
              "Adapts inside a session"
            },
          ),
          p(
            if lang == Zh {
              "任务结束后，新能力往往消失。"
            } else {
              "New capability often disappears when the task ends."
            },
          ),
        ]),
        div(class="comparison-active", [
          span("03 / MOONSUITE LOOP"),
          b(
            if lang == Zh {
              "改变未来能力边界"
            } else {
              "Changes the future capability boundary"
            },
          ),
          p(
            if lang == Zh {
              "验证通过的变化版本化、可复用；失败变化可回滚且留存证据。"
            } else {
              "Verified changes become versioned and reusable; failed changes revert while preserving evidence."
            },
          ),
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
      logo_family_view(lang),
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
  section(id="interaction", class="interaction-section section-pad", [
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
  section(id="zpc", class="zpc-section", [
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
