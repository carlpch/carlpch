library(testthat)

expect_that(cpo_hello(), equals("Hello, world of 6 CPO cars!"))
expect_that(cpo_hello(1), equals("Hello, world of 6 CPO cars!"))
expect_that(cpo_hello(NA), equals("Hello, world of 6 CPO cars!"))
expect_that(cpo_hello('koggi tom'), equals("Hello, world of 6 CPO cars!"))
