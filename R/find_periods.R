#' Find periods in time series using Alter-Johnson function.
#'
#' @name find_periods
#' @usage find_periods(x, y, tol=1e-6)
#' @param x double. A vector of time series keys.
#' @param y double. A vector of time series values.
#' @param tol double. A tolerance value for comparison between twe values.
#' @returns A vector of doubles – estimated periods.
#' @export
#'
#' @examples
#' x <- seq(-2 * pi, 2 * pi, length = 1001)
#' y <- sin(x)
#' find_periods(x, y)
#' # [1]  6.283185 12.566371
#' # 2*pi and 4*pi respectively
find_periods <- function(x, y, tol=1e-6) {
  find_periods_(x, y, tol)
}
# find_periods <- function(x, y, tol=1e-6) {
#   n <- length(y)
#   idx <- seq(1, n - 1)
#   res <- purrr::map(idx, ~ alter_johnson_(y, .))
#   periods <- purrr::keep(idx, ~ abs(res[[.]]) < tol)
  # purrr::map(periods, ~ abs(x[[1]] - x[[.]]))
# }
