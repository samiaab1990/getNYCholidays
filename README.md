# getNYCholidays

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/getNYCholidays)](https://CRAN.R-project.org/package=getNYCholidays)
![GitHub all releases](https://img.shields.io/github/downloads/samiaab1990/getNYCholidays/total)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/samiaab1990/getNYCholidays)

<!-- badges: end -->

Retrieves a vector of New York City holidays dates listed on the NYC Office of Payroll Administration's List of Holidays PDF in R. 

## Installation

You can install the development version of getNYCholidays from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("samiaab1990/getNYCholidays")
```

## Example


``` r
library(getNYCholidays)

# returns a vector of holiday dates based on the current year's calendar 
get_nyc_holidays()

[1] "2021-12-31" "2022-01-01" "2022-01-17" "2022-02-11" "2022-02-12" "2022-02-21" "2022-05-30"
[8] "2022-06-19" "2022-06-20" "2022-07-04" "2022-09-05" "2022-10-10" "2022-11-08" "2022-11-11"
[15] "2022-11-24" "2022-12-25" "2022-12-26" "2023-01-01"


# returns a data frame with date, holiday name, yyyy-mm-dd format and day of week based on the current year's calendar 
get_nyc_holidays(return_data_frame=TRUE)

              Date                        Holiday yyyy_mm_dd day_of_week
2    Dec. 31, 2021      New Year's Day (Observed) 2021-12-31      Friday
3        January 1                 New Year's Day 2022-01-01    Saturday
4       January 17   Martin Luther King Jr.'s Day 2022-01-17      Monday
5     February 11* Lincoln's Birthday* (Observed) 2022-02-11      Friday
6     February 12*            Lincoln's Birthday* 2022-02-12    Saturday
7      February 21                Presidents' Day 2022-02-21      Monday
8           May 30                   Memorial Day 2022-05-30      Monday
9          June 19                     Juneteenth 2022-06-19      Sunday
10         June 20          Juneteenth (Observed) 2022-06-20      Monday
11          July 4               Independence Day 2022-07-04      Monday
12     September 5                      Labor Day 2022-09-05      Monday
13      October 10                   Columbus Day 2022-10-10      Monday
14      November 8                   Election Day 2022-11-08     Tuesday
15     November 11                  Veteran's Day 2022-11-11      Friday
16     November 24               Thanksgiving Day 2022-11-24    Thursday
17     December 25                  Christmas Day 2022-12-25      Sunday
18     December 26       Christmas Day (Observed) 2022-12-26      Monday
19 January 1, 2023                 New Year's Day 2023-01-01      Sunday
```

