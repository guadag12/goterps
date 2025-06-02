test_that("goterps_palette_c returns correct number of colors", {
  expect_length(goterps_palette_c("yellow", n = 5), 5)
  expect_type(goterps_palette_c("yellow", n = 5), "character")
})

test_that("goterps_theme returns a ggplot theme object", {
  thm <- goterps_theme()
  expect_true(inherits(thm, "theme"))
})

test_that("umd_colors returns expected length", {
  expect_equal(length(goterps_palette_d(3)), 3)
})
