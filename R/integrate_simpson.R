#' Integrate a function numerically using Simpson's Rule
#'
#' @param fn A function that takes a number and returns another.
#' @param left Left boundary of integration.
#' @param right Right boundary of integration.
#' @param n Number of split intervals.
#' @returns An approximate value of the definite integral.
#' @export
#'
#' @examples
#' integrate_rect(sin, 0, 3.14159, 2000)
#' # 2
integrate_simpson <- function(fn, left, right, n) {
  h <- (right - left) / (2 * n)
  ys <- seq(2 * n) %>%
    purrr::map_dbl(~ left + .x * h) %>%
    purrr::map_dbl(~ fn(.x))
  odd <- ys[seq_along(ys) %% 2 == 1] %>%
    sum()
  even <- ys[seq_along(ys) %% 2 == 0] %>%
    sum()
  (h / 3) * (fn(left) + fn(right) + 4 * odd + 2 * even)
}
