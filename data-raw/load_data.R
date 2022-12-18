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

spotify_all <- read_csv("data-raw/tracks_data.csv") %>%
  clean_names() %>%
  select(name,
         album,
         artists,
         explicit,
         danceability,
         energy,
         key,
         speechiness,
         acousticness,
         instrumentalness,
         liveness,
         valence,
         tempo,
         year,
         release_date)

usethis::use_data(spotify_all, overwrite = TRUE)
