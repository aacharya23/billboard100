## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(janitor)
top100 <- read_csv("data-raw/charts.csv") %>%
  clean_names()

usethis::use_data(top100, overwrite = TRUE)

#Week of 11/6/21

