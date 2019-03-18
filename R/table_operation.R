globalVariables(".")
# see here https://github.com/tidyverse/magrittr/issues/29#issuecomment-74313262

#' Replace all x in a tibble with y
#'
#' While the \code{dplyr} grammar provides great functionality to
#' replace any cell value, \code{replace_all} makes code more readable and intuitive.
#' @param table        This needs to be a  \code{dplyr}  \code{tibble}.
#' @param target       The target value to be replaced. This can be number, string, or NA.
#' @param replacement  The value that will be used to replace the \code{target}.
#' @return This function will return a \code{tibble} with all the \code{x} replaced by \code{y}.
#' @examples
#' library(tibble)
#' library(dplyr)
#' data = tibble(a=1:10, b=11:20, c='Test')
#' replace_all(table = data,target='Test',replacement=100)
#'
#' data = tibble(a=1:10, b=11:20, c=NA)
#' replace_all(table = data,target=NA,replacement=100)
#' @export

replace_all <- function(table,target,replacement) {
  if (is.na(target)==TRUE){
    table <- dplyr::mutate_all(table, dplyr::funs(ifelse(is.na(.),replacement,.)))
  } else {
    table <- dplyr::mutate_all(table, dplyr::funs(ifelse(.==target,replacement,.)))
  }
  return(table)
}

#' Counting the number of non-missing cells within a row
#'
#' Inspired by \code{STATA}'s \code{rownonmiss} function.
#' @param table    Takes a dataframe or tibble.
#' @return This function will return a vector with the count of all the non-missing cells in each row.
#' @examples
#' library(tibble)
#' library(dplyr)
#' data = tibble(a=c(NA,NA,1:3), b=rep(NA,5), c=c(100:97,NA))
#' rownonmiss(data)
#'
#' @export

rownonmiss <- function(table){
  table <- dplyr::mutate_all(table, dplyr::funs(ifelse(is.na(.),0,1)))
  return(rowSums(table))
}
