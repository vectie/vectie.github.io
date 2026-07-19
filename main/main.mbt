///|
#cfg(target="js")
extern "js" fn browser_pathname() -> String =
  #| () => globalThis.location?.pathname || "/"

///|
#cfg(target="js")
extern "js" fn browser_product_slug() -> String =
  #| () => {
  #|   const parts = (globalThis.location?.pathname || "/").split("/").filter(Boolean);
  #|   return parts[0] === "products" ? (parts[1] || "") : "";
  #| }

///|
#cfg(target="js")
extern "js" fn browser_initial_lang() -> String =
  #| () => new URLSearchParams(globalThis.location?.search || "").get("lang") || "en"

///|
#cfg(target="js")
extern "js" fn browser_set_lang(lang : String) -> Unit =
  #| (lang) => {
  #|   document.documentElement.lang = lang === "zh" ? "zh-CN" : "en";
  #|   const url = new URL(globalThis.location.href);
  #|   url.searchParams.set("lang", lang);
  #|   globalThis.history.replaceState({}, "", url);
  #| }

///|
fn lang_from_code(code : String) -> Lang {
  if code == "zh" {
    Zh
  } else {
    En
  }
}

///|
fn init_model() -> Model {
  let lang = lang_from_code(browser_initial_lang())
  browser_set_lang(if lang == Zh { "zh" } else { "en" })
  { lang, active_step: 0, path: browser_pathname() }
}

///|
fn update(
  _dispatch : Dispatch[Msg],
  msg : Msg,
  model : Model,
) -> (@rabbita.Cmd, Model) {
  match msg {
    ToggleLang => {
      let lang = if model.lang == Zh { En } else { Zh }
      browser_set_lang(if lang == Zh { "zh" } else { "en" })
      (
        @rabbita.none,
        { lang, active_step: model.active_step, path: model.path },
      )
    }
    SelectStep(step) =>
      (@rabbita.none, { lang: model.lang, active_step: step, path: model.path })
  }
}

///|
fn view(dispatch : Dispatch[Msg], model : Model) -> @rabbita.Html {
  if model.path.contains("/plan") {
    plan_view(dispatch, model)
  } else if model.path.contains("/products/") {
    match product_by_slug(browser_product_slug()) {
      Some(product) => product_page(dispatch, model, product)
      None => not_found_page(dispatch, model)
    }
  } else {
    home_view(dispatch, model)
  }
}

///|
#warnings("-alert_unstable")
fn main {
  let (_, cell) = @rabbita.cell_with_emit(model=init_model(), update~, view~)
  let app = @rabbita.new(cell)
  app.mount("app")
}
