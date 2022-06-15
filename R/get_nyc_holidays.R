#' Get NYC holiday dates
#'
#' \code{get_nyc_holidays} returns a vector of all of the city holiday dates per the Office of Payroll Administration in yyyy-mm-dd format. If return_data_frame is set to TRUE, then returns a data frame with date, holiday description, the date in yyyy-mm-dd format and the day of the week.
#'
#' The function grabs the dates from the list of holidays pdf file from OPA from the current year.
#'
#' @param  return_data_frame A logical vector. Default is FALSE
#' @return a vector of holiday dates. If return_data_frame is TRUE, returns a data frame
#' @importFrom dplyr %>% bind_cols mutate case_when pull
#' @importFrom lubridate year mdy
#' @importFrom utils head tail
#' @importFrom janitor row_to_names
#' @importFrom readr read_lines
#' @importFrom stringr str_split str_detect str_replace_all
#' @importFrom stats setNames
#' @importFrom pdftools pdf_text
#' @export

get_nyc_holidays<-function(return_data_frame=FALSE){

  defaultW <- getOption("warn")
  options(warn = -1)

  year<-year(Sys.Date())

  holidays<-pdftools::pdf_text(
    paste0(
      'https://www1.nyc.gov/assets/opa/downloads/pdf/',year,'-list-of-holidays.pdf'
    )
  ) %>%
    read_lines(skip_empty_rows = TRUE) %>%
    str_split('\\s{2,}') %>%
    head(-2) %>%
    tail(-1) %>%
    setNames(.,1:length(.)) %>%
    bind_cols() %>%
    tail(-1) %>%
    t() %>%
    as.data.frame() %>%
    row_to_names(1) %>%
    mutate(yyyy_mm_dd=
             case_when(
               str_detect(Date,'.*(\\d{4}).*') ~ mdy(Date),
               TRUE ~ mdy(paste0(str_replace_all(Date,'[^[:alnum:]]',' '),' ',year))),
           day_of_week = weekdays(yyyy_mm_dd))

  if(return_data_frame==TRUE){
  holidays
    }
  else{
  holidays<-holidays %>% pull(yyyy_mm_dd)
  }

return(holidays)

options(warn=defaultW)
  }
