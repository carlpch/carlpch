[![Build Status](https://travis-ci.org/carlpch/carlpch.svg?branch=master)](https://travis-ci.org/carlpch/carlpch)

# carlpch
This is an R package I built to write some useful functions with the goal of improving readability and saving myself some time while doing data manipulation. 

## Installation:
Install `devtools` (`install.packages('devtools')`) before running the commands below to install this package:
`devtools::install_github("carlpch/carlpch")`

In order to run the package, `dplyr` is required.

## Package contents:
Currently, there are only two functions, as shown below: 

`replace_all()`: this takes a dataframe/tibble and replace all value `x` with value `y`.

`rownonmiss()` this is motivated by the same function in `STATA`. 

You can refer to the documentation using `?replace_all` and `?rownonmiss` once the package is installed on your computer.
