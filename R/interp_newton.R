#' Newton polynomial
#'
#' Interpolate given points with a Newton polynomial.
#'
#' @param xs double. X values of interpolated function.
#' @param ys double. Y values of interpolated function.
#'
#' @returns A function p(x) that calculates a value of the Newton polynomial
#' for given points at x.
#'
#' @export
#'
#' @examples
#' xs <- as.double(1:5)
#' p <- interp_newton(xs, sin(xs))
interp_newton <- function(xs, ys) {
  if (length(xs) == 0) {
    stop(simpleError("xs cannot be of length 0"))
  }
  if (length(xs) != length(ys)) {
    e <- simpleError("xs and ys are not of the same length.")
    stop(e)
  }

  diffs <- xs %>%
    purrr::imap_dbl(~ div_dif_(xs[1:.y], ys[1:.y]))

  p <- function(x) {
    basises <- xs[1:length(xs) - 1] %>%
      purrr::imap_dbl(~ newton_basis_(x, xs[1:.y]))
    diffs[[1]] + sum(diffs[2:length(diffs)] * basises)
  }

  Vectorize(p)
}
