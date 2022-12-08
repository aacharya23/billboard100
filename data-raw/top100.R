## code to prepare `top100` dataset goes here
library(tidyverse)
library(janitor)
top100 <- read_csv("data-raw/bb_hot100.csv") %>%
  clean_names()

spotify <- read_csv("data-raw/tracks_data.csv") %>%
  clean_names

artists <- read_csv("data-raw/artists.csv") %>%
  clean_names

albums <- read_csv("data-raw/tracks_data.csv") %>%
  clean_names
usethis::use_data(top100, overwrite = TRUE)
usethis::use_data(spotify, overwrite = TRUE)
usethis::use_data(artists, overwrite = TRUE)
usethis::use_data(albums, overwrite = TRUE)

spotify_all <- albums %>%
  inner_join(tracks_data, by = c("id" = "album_id"))

usethis::use_data(spotify_all, overwrite = TRUE)






