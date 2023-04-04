install.packages("spotifyr")
install.packages("tibble")
install.packages("dplyr")
library(spotifyr)
library(usethis)
library(tibble) 
library(dplyr)  
radiohead <- get_artist_audio_features("radiohead")
saveRDS(radiohead, "radiohead.rds")
radiohead <- readRDS("radiohead.rds")
radiohead <- as_tibble(radiohead)

radiohead |>
  select(artist_name, track_name, album_name)