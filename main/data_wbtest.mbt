///|
test "suite catalog keeps seven core products and five cases" {
  assert_eq(core_products().length() + platform_products().length(), 7)
  assert_eq(case_products().length(), 5)
  assert_eq(products().length(), 12)
}

///|
test "every public route resolves to the intended product" {
  match product_by_slug("moonbook") {
    Some(product) => {
      assert_eq(product.name, "MoonBook")
      assert_eq(
        product.philosophy.get(Zh),
        "记忆不是过去的仓库，而是下一次行动的校正器。",
      )
    }
    None => fail("moonbook must be routable")
  }
}

///|
test "owner-selected product philosophies remain stable" {
  let selected = [
    (
      "moonclaw", "智能不是一次回答，而是能够留下证据、继续运行并接受纠偏的行动。",
      "Intelligence is not an answer; it is action that leaves evidence, keeps running, and accepts correction.",
    ),
    (
      "moonbook", "记忆不是过去的仓库，而是下一次行动的校正器。",
      "Memory is not a warehouse of the past; it is the calibration system for the next action.",
    ),
    (
      "moontown", "组织不是被设计出来的图，而是角色、记忆与规则长期互动后涌现出的秩序。",
      "An organization is not a designed chart, but order emerging from the long interaction of roles, memory, and rules.",
    ),
    (
      "moonflow", "真正的编排，不保证永不失败，而保证失败之后仍能继续。",
      "Real orchestration does not promise never to fail; it promises the work can continue afterward.",
    ),
    (
      "moondesk", "最好的软件不是被写出来的，而是从一份可执行文档里长出来的。",
      "The best software is not merely written; it grows from an executable document.",
    ),
    (
      "moongate", "看见流量，才能看见智能的代价。", "Only by seeing the traffic can we see the cost of intelligence.",
    ),
    (
      "moonproj", "公司的经营事实应从执行中自然沉淀，而不是靠人重复录入。",
      "A company’s operating truth should settle out of execution, not repeated human data entry.",
    ),
    (
      "moonrobo", "让智能拥有身体之前，先让每一个动作拥有证据与边界。",
      "Before intelligence gets a body, give every action evidence and boundaries.",
    ),
    (
      "moonmoon", "最远的外包，是把工厂开到月球上去。", "The furthest outsourcing is opening the factory on the Moon.",
    ),
    (
      "moonmold", "展示用的漂亮模型，永远不能冒充工程真理。",
      "A beautiful presentation model must never impersonate engineering truth.",
    ),
    (
      "mooncast", "创作可以自由，生产必须让每一帧都有来处。",
      "Creation may be free; production must give every frame a provenance.",
    ),
    (
      "moonfind", "研究的尽头不是答案，而是下一个更好的问题。",
      "Research does not end with an answer, but with a better next question.",
    ),
  ]
  for _, entry in selected {
    let (slug, chinese, english) = entry
    match product_by_slug(slug) {
      Some(product) => {
        assert_eq(product.philosophy.get(Zh), chinese)
        assert_eq(product.philosophy.get(En), english)
      }
      None => fail("selected product must remain routable: \{slug}")
    }
  }
}

///|
test "unknown product routes remain explicit" {
  assert_true(product_by_slug("not-a-moon") is None)
}
