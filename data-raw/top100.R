## code to prepare `top100` dataset goes here
library(tidyverse)
library(janitor)
top100 <- read_csv("data-raw/bb_hot100.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%Y-%m-%d")
  )

usethis::use_data(top100, overwrite = TRUE)
