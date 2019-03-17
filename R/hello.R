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
#' This \code{hello()} help us say hello to all the CPO cars!
#' There were 6 CPO (Certified Pre-owned) cars in a lake,
#' they did not realize the surrounding water until someone
#' revealed the fact to them. May be to late to fix them,
#' there is still time to say hello.
#' @return You give anything to the function (including nothing) Then, you receive a "Hello" from the function.
#' @examples
#' hello()
#' hello('6 CPO Cars!')
cpo_hello <- function() {
  print("Hello, world of 6 CPO cars!")
}

