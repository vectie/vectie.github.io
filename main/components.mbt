///|
fn two_digit(n : Int) -> String {
  if n < 10 {
    "0\{n}"
  } else {
    "\{n}"
  }
}

///|
fn stage_class(stage : Stage) -> String {
  match stage {
    Open => "open"
    Alpha => "alpha"
    Building => "building"
    Vision => "vision"
  }
}

///|
fn stage_label(stage : Stage, lang : Lang) -> String {
  match (stage, lang) {
    (Open, Zh) => "开源可验证"
    (Open, En) => "Open & evidenced"
    (Alpha, _) => "Alpha"
    (Building, Zh) => "建设中"
    (Building, En) => "Building"
    (Vision, Zh) => "愿景 / 未上线"
    (Vision, En) => "Vision / not launched"
  }
}

///|
fn stage_view(product : Product, lang : Lang) -> @rabbita.Html {
  span(class="stage stage-\{stage_class(product.stage)}", [
    i(""),
    span(stage_label(product.stage, lang)),
  ])
}

///|
fn brand(lang : Lang) -> @rabbita.Html {
  a(
    href="/?lang=\{if lang == Zh { "zh" } else { "en" }}",
    class="brand",
    attrs=@html.Attrs::build().aria_label("Moonsuite home"),
    escape=true,
    [
      span(class="brand-orbit", span("")),
      span([span("MOONSUITE "), small("月栖智能体套件")]),
    ],
  )
}

///|
fn nav_view(
  dispatch : Dispatch[Msg],
  model : Model,
  compact? : Bool = false,
) -> @rabbita.Html {
  let lang = model.lang
  let suffix = if lang == Zh { "zh" } else { "en" }
  header(class="nav\{if compact { " nav-compact" } else { "" }}", [
    brand(lang),
    nav(
      attrs=@html.Attrs::build().aria_label(
        if lang == Zh {
          "主导航"
        } else {
          "Main navigation"
        },
      ),
      [
        a(
          href="/?lang=\{suffix}#loop",
          escape=true,
          if lang == Zh {
            "闭环"
          } else {
            "Loop"
          },
        ),
        a(
          href="/?lang=\{suffix}#system",
          escape=true,
          if lang == Zh {
            "系统"
          } else {
            "System"
          },
        ),
        a(
          href="/?lang=\{suffix}#cases",
          escape=true,
          if lang == Zh {
            "案例"
          } else {
            "Cases"
          },
        ),
        a(
          href="/?lang=\{suffix}#interaction",
          escape=true,
          if lang == Zh {
            "协作"
          } else {
            "Flow"
          },
        ),
        a(href="/?lang=\{suffix}#zpc", escape=true, "ZPC"),
        a(
          href="/plan/?lang=\{suffix}",
          escape=true,
          if lang == Zh {
            "中国计划"
          } else {
            "China plan"
          },
        ),
      ],
    ),
    button(
      class="lang-button",
      type_="button",
      on_click=dispatch(ToggleLang),
      attrs=@html.Attrs::build().aria_label(
        if lang == Zh {
          "Switch to English"
        } else {
          "切换至中文"
        },
      ),
      if lang == Zh {
        "EN"
      } else {
        "中"
      },
    ),
  ])
}

///|
fn visual_copy(visual : String) -> (String, String, Array[String]) {
  match visual {
    "runtime" =>
      (
        "RUN / 04A7",
        "Bounded agent runtime",
        ["tool_call", "patch_applied", "test_passed", "receipt.accept"],
      )
    "memory" =>
      (
        "BOOK / KEEPER",
        "Three-gap memory",
        [
          "信息差 · 2", "认知差 · 1", "执行差 · 3", "next: verify claim",
        ],
      )
    "town" =>
      (
        "TOWN / 24H",
        "Resident field",
        [
          "Mayor · observing", "Keeper · writing", "Builder · running", "Patrol · healthy",
        ],
      )
    "flow" =>
      (
        "FLOW / R17",
        "Evidence work graph",
        ["intent", "attempt · 03", "acceptance", "artifact"],
      )
    "desk" =>
      (
        "DESK / BOOK 08",
        "Executable document",
        ["MoonWiki", "MoonCode", "Review", "Portable app-tool"],
      )
    "gate" =>
      (
        "GATE / LIVE",
        "Provider control plane",
        [
          "Qwen · 32ms", "DeepSeek · ready", "Kimi · standby", "failover · armed",
        ],
      )
    "erp" =>
      (
        "COMPANY / AUTH",
        "Institutional ledger",
        ["proposal", "authority check", "SoD review", "local posting"],
      )
    "robo" =>
      (
        "ROBO / E1",
        "Physical safety loop",
        ["telemetry", "calibration", "safety gate", "bounded dispatch"],
      )
    "lunar" =>
      (
        "LUNAR / SITE 01",
        "Traverse evidence",
        [
          "slope · 8.4°", "energy · 72%", "hazard · bounded", "decision · hold",
        ],
      )
    "mold" =>
      (
        "MOLD / REV 12",
        "Representation lineage",
        ["editable source", "simulation", "presentation", "known loss · 02"],
      )
    "cast" =>
      (
        "CAST / G5",
        "Production evidence rail",
        ["rights · locked", "shots · 18/24", "QC · review", "budget · 63%"],
      )
    _ =>
      (
        "FIND / R&D",
        "Question frontier",
        ["claim", "counterexample", "missing evidence", "next experiment"],
      )
  }
}

///|
fn short_name(name : String) -> String {
  match name {
    "MoonClaw" => "M/Claw"
    "MoonBook" => "M/Book"
    "Moontown" => "M/town"
    "MoonFlow" => "M/Flow"
    "MoonDesk" => "M/Desk"
    "MoonGate" => "M/Gate"
    "MoonProj" => "M/Proj"
    "MoonRobo" => "M/Robo"
    "MoonMoon" => "M/Moon"
    "MoonMold" => "M/Mold"
    "MoonCast" => "M/Cast"
    _ => "M/Find"
  }
}

///|
fn product_capture(product : Product) -> String {
  match product.slug {
    "moonclaw" => "/shots/moonclaw.png"
    "moonbook" => "/shots/moonbook.png"
    "moontown" => "/shots/moontown.png"
    "moondesk" => "/shots/moondesk.png"
    "moongate" => "/shots/moongate.png"
    "moonproj" => "/shots/moonproj.png"
    "moonrobo" => "/shots/moonrobo.png"
    "moonmoon" => "/shots/moonmoon.png"
    "mooncast" => "/shots/mooncast.png"
    _ => ""
  }
}

///|
fn capture_label(product : Product) -> String {
  match product.slug {
    "moonclaw" => "REAL UI · STATIC OPERATOR STATE"
    "moonbook" => "REAL OUTPUT · EXECUTABLE BOOK PROJECTION"
    "moontown" => "REPOSITORY ASSETS · SCENE COMPOSITION"
    "moondesk" => "REAL UI · LOCAL WORKSPACE"
    "moongate" => "REAL CAPTURE · OPERATOR CONSOLE"
    "moonproj" => "REAL UI · RABBITA ERP SHELL"
    "moonrobo" => "REAL UI · LOCAL HOST SNAPSHOT"
    "moonmoon" => "REAL CAPTURE · MISSION REHEARSAL"
    "mooncast" => "REAL UI · STATIC STUDIO STATE"
    _ => "FEATURE VIEW"
  }
}

///|
fn feature_status(product : Product) -> String {
  match product.slug {
    "moonflow" => "● NO UI SURFACE"
    "moonmold" => "● SOURCE UNAVAILABLE"
    "moonfind" => "● PLANNED"
    _ => "● FEATURE EVIDENCE"
  }
}

///|
fn product_visual(product : Product, large? : Bool = false) -> @rabbita.Html {
  let capture = product_capture(product)
  if capture != "" {
    div(
      class="product-visual real-capture\{if large { " visual-large" } else { "" }}",
      [
        div(class="visual-top", [
          span(capture_label(product)),
          span(class="visual-live", "● SOURCE-CAPTURED"),
        ]),
        img(
          class="capture-image",
          src=capture,
          alt="\{product.name} product interface",
          loading="lazy",
          decoding="async",
        ),
      ],
    )
  } else {
    let (label, title, lanes) = visual_copy(product.visual)
    let lane_views : Array[@rabbita.Html] = []
    for index, lane in lanes {
      lane_views.push(
        div([
          span(two_digit(index + 1)),
          b(lane),
          i(
            attrs=@html.Attrs::build().style_attr("width: \{48 + index * 13}%"),
            "",
          ),
        ]),
      )
    }
    div(
      class="product-visual visual-\{product.visual}\{if large { " visual-large" } else { "" }}",
      attrs=@html.Attrs::build()
        .role("img")
        .aria_label("\{product.name}: \{title} feature snapshot"),
      [
        div(class="visual-top", [
          span(label),
          span(class="visual-live", feature_status(product)),
        ]),
        div(class="visual-world", [
          div(class="visual-rings", [i(""), i(""), i("")]),
          div(class="visual-core", [span(short_name(product.name)), b(title)]),
        ]),
        div(class="visual-lanes", lane_views),
      ],
    )
  }
}

///|
fn footer_view(lang : Lang) -> @rabbita.Html {
  footer(class="footer", [
    div(class="brand", [span(class="brand-orbit", span("")), span("MOONSUITE")]),
    p(
      if lang == Zh {
        "由向量贴贴 Vectie 开源构建。让软件成为会学习的组织。"
      } else {
        "Open-built by Vectie. Let software become an organization that learns."
      },
    ),
    a(href="https://github.com/vectie", escape=true, "github.com/vectie ↗"),
  ])
}
