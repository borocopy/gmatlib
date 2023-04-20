test_that("linfit works", {
  fn <- function(x) 4.32 * x - 81.2
  xs <- seq(1, 10, 0.5)
  ys <- fn(xs)
  expect_equal(linfit(xs, ys), list("m" = 4.32, "k" = -81.2))
})
