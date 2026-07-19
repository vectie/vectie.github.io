///|
enum Lang {
  Zh
  En
} derive(Eq, Debug)

///|
struct Bilingual {
  zh : String
  en : String
}

///|
fn bi(zh : String, en : String) -> Bilingual {
  { zh, en }
}

///|
fn Bilingual::get(self : Bilingual, lang : Lang) -> String {
  match lang {
    Zh => self.zh
    En => self.en
  }
}

///|
enum ProductKind {
  Core
  Case
} derive(Eq, Debug)

///|
enum Stage {
  Open
  Alpha
  Building
  Vision
} derive(Eq, Debug)

///|
struct Product {
  slug : String
  name : String
  cn : String
  kind : ProductKind
  stage : Stage
  github : String
  visual : String
  philosophy : Bilingual
  intro : Bilingual
  deep_dive : Bilingual
  opc : Bilingual
  strengths : Array[Bilingual]
  interfaces : Array[String]
  evidence : Bilingual
}

///|
struct LoopStep {
  title : Bilingual
  copy : Bilingual
  state : Bilingual
  evidence : Bilingual
  capability : String
}

///|
struct Model {
  lang : Lang
  active_step : Int
  path : String
}

///|
enum Msg {
  ToggleLang
  SelectStep(Int)
} derive(Debug)

///|
type Dispatch[A] = @rabbita.Emit[A]
