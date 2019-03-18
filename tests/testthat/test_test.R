context("carlpch package test")
# without first line, testing will crash  https://stackoverflow.com/a/50402813/5487839

library(testthat)
library(tibble)
library(dplyr)

# table_operation.R ----------------------------------------------------

# Testing replace_all()
data1 <- tibble(var1=c(1:10),var2='asdf',var3=rep(c('test1','test2'),5))
data1a <- tibble(var1=c(1:10),var2='zzzz',var3=rep(c('test1','test2'),5))
data1b <- tibble(var1=c(1:10),var2='asdf',var3=rep(c('test1',NA),5))
data1c <- tibble(var1=c(1,2,3,4,0,6,7,8,9,10),var2='asdf',var3=rep(c('test1','test2'),5))

expect_that(replace_all(data1, 'asdf', 'zzzz'), equals(data1a))
expect_that(replace_all(data1, 'test2', NA), equals(data1b))
expect_that(replace_all(data1, 5, 0), equals(data1c))

