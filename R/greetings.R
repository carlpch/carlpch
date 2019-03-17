# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Say hello to CPO cars
#'
#' This \code{cpo_hello()} help us say hello to all the CPO cars!
#' There were 6 CPO (Certified Pre-owned) cars in a lake,
#' they did not realize the surrounding water until someone
#' revealed the fact to them. May be to late to fix them,
#' there is still time to say hello.
#' @param x  This can be anything. We don't care what you have to say. It's meaningless.
#' @return You give anything to the function (including nothing) Then, you receive a "Hello" from the function.
#' @examples
#' 1+1
#' cpo_hello(10)
#' @export

cpo_hello <- function(x) {
  x = "Hello, world of 6 CPO cars!"
  print(x)
}

# usethis::use_testthat() # for setting up for testing

