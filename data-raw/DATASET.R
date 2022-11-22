## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(janitor)
top100 <- read_csv("data-raw/bb_hot100.csv") %>%
  clean_names()

usethis::use_data_raw(name = "top100") #overwrite = TRUE



