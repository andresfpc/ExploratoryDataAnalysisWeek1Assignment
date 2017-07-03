library(dplyr)

dataLoad <- function() {
   eData <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric')) %>%
      mutate(Date = as.Date(Date, '%d/%m/%Y')) %>%
      mutate(DateTime = as.POSIXct(strptime(paste(Date, ' ', Time), '%Y-%m-%d %H:%M:%S'))) %>%
      filter(DateTime >= strftime('2007-02-01 00:00:00'), DateTime < strftime('2007-02-03 00:00:00')) %>%
      select(-Date, -Time) %>%
      select(DateTime, everything()) %>%
      tbl_df
   
   return(eData)
}

eData <- dataLoad()
