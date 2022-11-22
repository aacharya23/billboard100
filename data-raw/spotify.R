## code to prepare `spotify` dataset goes here
library(tidyverse)
library(janitor)

spotify <- read.csv("data-raw/spotify_attributes.csv") %>%
  clean_names()

usethis::use_data(spotify, overwrite = TRUE)
