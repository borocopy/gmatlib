
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gmatlib

<!-- badges: start -->
<!-- badges: end -->

The goal of gmatlib is to provide a set of functions for common
numerical analysis algorithms.

## Installation

You can install the development version of gmatlib from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("borocopy/gmatlib")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(gmatlib)
fn <- function(x) 12 * x - 9
xs <- seq(1, 10, 0.5)
linfit(xs, fn(xs))
#> $m
#> [1] 12
#> 
#> $k
#> [1] -9

integrate_simpson(sin, 0, 3.14159, 2000)
#> [1] 2
```
