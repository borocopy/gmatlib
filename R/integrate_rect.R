#' Rectangular integration
#'
#' Integrate a function numerically using rectangular integration.
#'
#' @param fn A function that takes a number and returns another.
#' @param left Left boundary of integration.
#' @param right Right boundary of integration.
#' @param n Number of split intervals.
#' @returns An approximate value of the definite integral.
#' @export
#'
#' @examples
#' fn <- function(x) x * x
#' integrate_rect(fn, 0, 4, 2000)
#' # 21.31734
integrate_rect <- function(fn, left, right, n) {
  h <- (right - left) / n
  res <- seq(0, n - 1) %>%
    purrr::map_dbl(~ fn(left + h * .x)) %>%
    sum()
  res * h
}
