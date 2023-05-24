test_that("Alter-Johnson works", {
  x <- seq(-2 * pi, 2 * pi, length = 10001)
  y <- sin(x)
  period_prob <- alter_johnson(y, 5000)
  expect_equal(period_prob, 0, tolerance = 1e-6)
})
