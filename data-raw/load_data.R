## code to prepare `top100` dataset goes here
library(tidyverse)
library(janitor)
top100 <- read_csv("data-raw/bb_hot100.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%Y-%m-%d")
  )

usethis::use_data(top100, overwrite = TRUE)


## code to prepare `spotify_all` dataset goes here

library(tidyverse)
library(janitor)

artists <- read_csv("data-raw/artists.csv") %>%
  clean_names()

albums <- read_csv("data-raw/tracks_data.csv") %>%
  clean_names()

spotify_all <- albums %>%
  left_join(artists, by = c("album_id"="id"))

usethis::use_data(spotify_all, overwrite = TRUE)
