test_that("find_periods works", {
  x <- seq(-2 * pi, 2 * pi, length = 10001)
  y <- sin(x)
  periods <- find_periods(x, y)
  expect_equal(periods, c(2 * pi, 4 * pi), tolerance = 1e-4)
})
