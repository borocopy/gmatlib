test_that("rect integration works", {
  fn <- function(x) x * x
  expect_equal(integrate_rect(fn, 0, 4, 20000), 21.3, tolerance = 0.1)
})
