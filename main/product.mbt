///|
fn product_page(
  dispatch : Dispatch[Msg],
  model : Model,
  product : Product,
) -> @rabbita.Html {
  let lang = model.lang
  let suffix = if lang == Zh { "zh" } else { "en" }
  let strengths : Array[@rabbita.Html] = []
  for index, strength in product.strengths {
    strengths.push(
      article([span(two_digit(index + 1)), h3(strength.get(lang)), i("")]),
    )
  }
  let interface_nodes : Array[@rabbita.Html] = [
    div(class="center-node", product.name),
  ]
  for index, name in product.interfaces {
    interface_nodes.push(
      span(
        attrs=@html.Attrs::build().style_attr(
          "--i: \{index}; --n: \{product.interfaces.length()};",
        ),
        name,
      ),
    )
  }
  main_(class="product-page", [
    nav_view(dispatch, model, compact=true),
    section(class="product-hero section-pad", [
      div(class="product-hero-meta", [
        a(
          href="/?lang=\{suffix}#\{if product.kind == Core { "system" } else { "cases" }}",
          escape=true,
          if lang == Zh {
            "← 返回系统"
          } else {
            "← Back to system"
          },
        ),
        stage_view(product, lang),
      ]),
      div(class="product-hero-grid", [
        div([
          p(
            class="eyebrow",
            "\{if product.kind == Core { "CORE SYSTEM" } else { "BUILT WITH MOONSUITE" }} · \{product.cn}",
          ),
          h1(product.name),
          blockquote("“\{product.philosophy.get(lang)}”"),
          p(class="product-lead", product.intro.get(lang)),
          div(class="hero-actions", [
            if product.github != "" {
              a(
                href=product.github,
                class="button button-primary",
                escape=true,
                [
                  span(
                    if lang == Zh {
                      "查看开源仓库"
                    } else {
                      "Open repository"
                    },
                  ),
                  span("↗"),
                ],
              )
            } else {
              span(
                class="button button-disabled",
                if lang == Zh {
                  "公开仓库待上线"
                } else {
                  "Public repo pending"
                },
              )
            },
            a(href="#opc", class="button button-ghost", escape=true, [
              span(if lang == Zh { "OPC 作用" } else { "OPC role" }),
              span("↓"),
            ]),
          ]),
        ]),
        product_visual(product, large=true),
      ]),
    ]),
    section(class="detail-section section-pad", [
      div([
        p(class="section-index", "01 / ADVANCED"),
        h2(
          if lang == Zh {
            "它真正拥有的边界"
          } else {
            "The boundary it truly owns"
          },
        ),
      ]),
      div(class="detail-copy", [
        p(product.deep_dive.get(lang)),
        div(class="evidence-note", [
          span(
            if lang == Zh {
              "证据与成熟度"
            } else {
              "Evidence & maturity"
            },
          ),
          p(product.evidence.get(lang)),
        ]),
      ]),
    ]),
    section(class="strength-section section-pad", [
      div(class="section-heading compact-heading", [
        p(class="section-index", "02 / ADVANTAGE"),
        div([
          p(class="eyebrow", "PRODUCT CHARACTER"),
          h2(
            if lang == Zh {
              "不是功能清单，是设计立场。"
            } else {
              "Not a feature list—a design position."
            },
          ),
        ]),
      ]),
      div(class="strength-grid", strengths),
    ]),
    section(id="opc", class="opc-section section-pad", [
      div(class="opc-label", [span("1"), @html.small("PERSON")]),
      div([
        p(class="eyebrow", "ONE-PERSON COMPANY LEVERAGE"),
        h2(
          if lang == Zh {
            "\{product.name} 在 OPC 中做什么？"
          } else {
            "What does \{product.name} do inside an OPC?"
          },
        ),
        p(product.opc.get(lang)),
      ]),
      div(class="opc-equation", [
        span(if lang == Zh { "创始人判断" } else { "founder judgment" }),
        b("×"),
        span(product.name),
        b("="),
        span(
          if lang == Zh {
            "组织级产能"
          } else {
            "organizational output"
          },
        ),
      ]),
    ]),
    section(class="interface-section section-pad", [
      p(class="section-index", "04 / INTERFACES"),
      div([
        p(class="eyebrow", "SYSTEM RELATIONSHIPS"),
        h2(
          if lang == Zh {
            "它从不单独成为整套系统。"
          } else {
            "It never pretends to be the whole system."
          },
        ),
        p(
          if lang == Zh {
            "清晰的所有权边界让组合产生力量，也让失败可以定位。"
          } else {
            "Clear ownership boundaries make composition powerful and failure diagnosable."
          },
        ),
      ]),
      div(class="interface-orbit", interface_nodes),
    ]),
    section(class="next-product section-pad", [
      p(
        if lang == Zh {
          "把这款产品放回主线"
        } else {
          "Return this product to the main thesis"
        },
      ),
      a(href="/?lang=\{suffix}#loop", escape=true, [
        span(
          if lang == Zh {
            "查看 Agent ↔ Software 自进化闭环"
          } else {
            "See the Agent ↔ Software evolution loop"
          },
        ),
        span("↗"),
      ]),
    ]),
    footer_view(lang),
  ])
}

///|
fn not_found_page(dispatch : Dispatch[Msg], model : Model) -> @rabbita.Html {
  main_(class="product-page", [
    nav_view(dispatch, model, compact=true),
    section(class="product-hero section-pad", [
      p(class="eyebrow", "404 / UNKNOWN MOON"),
      h1("Not found"),
      p(
        class="product-lead",
        if model.lang == Zh {
          "这个产品轨道不存在。"
        } else {
          "This product orbit does not exist."
        },
      ),
      a(
        href="/",
        class="button button-primary",
        escape=true,
        if model.lang == Zh {
          "返回主页"
        } else {
          "Back home"
        },
      ),
    ]),
  ])
}
