#' Linear regression
#'
#' Calculates coeffitients m and k for linear regression y = mx + k
#' via least squares method.
#'
#' @name linfit
#' @usage linfit(xs, ys)
#' @param xs double. Vector of dependent variable values.
#' @param ys double. Vector of independent variable values.
#' @returns List containing m and k.
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
NULL
