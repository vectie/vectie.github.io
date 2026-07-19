///|
test "English is the default language while Chinese remains explicit" {
  assert_true(lang_from_code("") == En)
  assert_true(lang_from_code("en") == En)
  assert_true(lang_from_code("unsupported") == En)
  assert_true(lang_from_code("zh") == Zh)
}
