# getNYCholidays

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/getNYCholidays)](https://CRAN.R-project.org/package=getNYCholidays)
![GitHub all releases](https://img.shields.io/github/downloads/samiaab1990/getNYCholidays/total)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/samiaab1990/getNYCholidays)

<!-- badges: end -->

Retrieves a vector of New York City holidays dates listed on the NYC Office of Payroll Administration's List of Holidays PDF. 

## Installation

You can install the development version of getNYCholidays from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("samiaab1990/getNYCholidays")
```

## Example


``` r
library(getNYCholidays)

# returns a vector of holiday dates only
get_nyc_holidays()

# returns a data frame with date, holiday name, yyyy-mm-dd format and day of week
get_nyc_holidays(return_data_frame=TRUE)
```

