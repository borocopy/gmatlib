#' Alter-Johnson periodization
#'
#' Generates an Alter-Johnson transformation function for provided time series.
#' The return function can be used for estimating a period in the data.
#'
#' @name alter_johnson
#' @usage alter_johnson(y, t)
#' @param y double. A vector of time series values.
#' @param t integer. An integer shift of time series values.
#' @returns A value of how likely t is a period (the closer to zero the better)
#' @export
#'
#' @examples
#' x <- seq(-2 * pi, 2 * pi, length = 10001)
#' y <- sin(x)
#' alter_johnson(y, 5000)
#' # [1] 3.07982e-16
#' # which correlates to T = 6.270619 (almost 2 * pi)
alter_johnson <- function(y, t) {
  alter_johnson_(y, t)
}
