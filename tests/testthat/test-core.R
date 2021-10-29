test_that("line break for multi-line function declaration", {
  expect_warning(styler:::test_collection("core", "eq-sub-replacement",
    transformer = style_text,
  ), NA)
})
