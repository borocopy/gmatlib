test_that("Simpson integration works", {
  expect_equal(
    integrate_simpson(cos, -3.14159, 3.14159, 1e5),
    0,
    tolerance = 1e-3
  )
})

