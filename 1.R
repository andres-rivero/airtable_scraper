library(stringr)
library(jsonlite)
library(readr)
library(xlsx)

file <- "C:/Users/andre/Desktop/500.json"

database <- read_file(file)

first_name <- "fldu9i5SNL5jnWJba" %>%
  str_locate_all(string = database) %>%
  as.data.frame()
last_name <- "fldaIujXpYWa5mvlo" %>%
  str_locate_all(string = database) %>%
  as.data.frame()
company <- "fld13Vo0JOboq2EyO" %>%
  str_locate_all(string = database) %>%
  as.data.frame()
country <- "fldPWCB8kLY4wmLWO" %>%
  str_locate_all(string = database) %>%
  as.data.frame()
linkedin <- "fld1tujgjWk3bqfZB" %>%
  str_locate_all(string = database) %>%
  as.data.frame()

db <- fromJSON(file, flatten = TRUE)

write.csv(db, "C:/Users/andre/Desktop/500.csv")
