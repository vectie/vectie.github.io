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
        "记忆不是数据库，而是智能体与世界之间的三本账：信息差、认知差、执行差。",
      )
    }
    None => fail("moonbook must be routable")
  }
}

///|
test "unknown product routes remain explicit" {
  assert_true(product_by_slug("not-a-moon") is None)
}
