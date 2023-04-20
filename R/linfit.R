#' Linear regression
#'
#' Calculates coeffitients m and k for linear regression y = mx + k
#' via least squares method.
#'
#' @name linfit
#' @usage linfit(xs, ys)
#' @param xs double. A vector of dependent variable values.
#' @param ys double. A vector of independent variable values.
#' @returns A list containing m and k.
#' @export
#'
#' @examples
#' fn <- function(x) 10 * x + 5
#' xs <- seq(1, 10, 0.5)
#' ys <- fn(xs)
#' linfit(xs, ys)
#' # $m
#' # [1] 10
#' # $k
#' # [1] 5
linfit <- function(xs, ys) {
  if (length(xs) != length(ys)) {
    e <- simpleError("xs and ys are not of the same length")
    stop(e)
  }
  linfit_(xs, ys)
}
