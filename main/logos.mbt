///|
fn logo_path(slug : String) -> String {
  if slug == "suite" {
    "/logos/moonsuite.svg"
  } else {
    "/logos/\{slug}.svg"
  }
}

///|
fn suite_logo(class_name : String) -> @rabbita.Html {
  img(
    class=class_name,
    src=logo_path("suite"),
    alt="MoonSuite logo",
    decoding="async",
  )
}

///|
fn product_logo(product : Product, class_name : String) -> @rabbita.Html {
  img(
    class=class_name,
    src=logo_path(product.slug),
    alt="\{product.name} logo",
    decoding="async",
  )
}

///|
fn logo_family_view(lang : Lang) -> @rabbita.Html {
  let suffix = if lang == Zh { "zh" } else { "en" }
  let cards : Array[@rabbita.Html] = [
    a(href="#top", class="logo-card logo-card-suite", escape=true, [
      suite_logo("logo-card-mark"),
      div([
        span("00 / PARENT MARK"),
        b("MoonSuite"),
        small(if lang == Zh { "统一月轨" } else { "unified orbit" }),
      ]),
    ]),
  ]
  for index, product in products() {
    cards.push(
      a(
        href="/products/\{product.slug}/?lang=\{suffix}",
        class="logo-card",
        escape=true,
        [
          product_logo(product, "logo-card-mark"),
          div([
            span("\{two_digit(index + 1)} / APP MARK"),
            b(product.name),
            small(product.cn),
          ]),
        ],
      ),
    )
  }
  div(class="logo-family", [
    div(class="logo-family-head", [
      div([
        p(class="eyebrow", "LUNAR GLYPHS · PRODUCT IDENTITY"),
        h3(
          if lang == Zh {
            "十三枚标记，同一条月轨。"
          } else {
            "Thirteen marks. One orbital grammar."
          },
        ),
      ]),
      p(
        if lang == Zh {
          "共同的缺口月轨代表可改变的软件边界；绿色信号代表被验证的状态。中心字形只表达每款产品真正拥有的职责。"
        } else {
          "The shared open orbit represents a software boundary that can change; the green signal marks verified state. Each central glyph expresses only the responsibility that product truly owns."
        },
      ),
      a(
        href="https://github.com/vectie/vectie.github.io/tree/main/docs/public/logos",
        class="text-link",
        escape=true,
        if lang == Zh {
          "下载 SVG 母版 ↗"
        } else {
          "Download SVG masters ↗"
        },
      ),
    ]),
    div(class="logo-grid", cards),
  ])
}
