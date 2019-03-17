#' Replace all x in a tibble with y
#'
#' While the \code{dplyr} grammar provides great functionality to
#' replace any cell value, \code{full_replace} makes code more readable and intuitive.
#' @param table        This needs to be a  \code{dplyr}  \code{tibble}.
#' @param target       The target value to be replaced. This can be number, string, or NA.
#' @param replacement  The value that will be used to replace the \code{target}.
#' @return This function will return a \code{tibble} with all the \code{x} replaced by \code{y}.
#' @examples
#' data = tibble(a=1:10, b=11:20, c='Test')
#' full_replace(table = data,target='Test',replacement=100)
#'
#' data = tibble(a=1:10, b=11:20, c=NA)
#' full_replace(table = data,target=NA,replacement=100)
#' @export

full_replace <- function(table,target,replacement) {
  if (is.na(target)==TRUE){
    table = mutate_all(table, funs(ifelse(is.na(.),replacement,.)))
  } else {
    table = mutate_all(table, funs(ifelse(.==target,replacement,.)))
  }
  return(table)
}

