#---- FIFA players -----

library(tidyverse)

#set working directory to raw-data
fifa_players <- read.csv("fifa_players.csv", sep = ",") %>% as_tibble() %>% select(-c(X, Photo, Flag, Club.Logo, Real.Face, Special, Skill.Moves))
names(fifa_players) <- make.names(names(fifa_players))

#set working directory to data
save(fifa_players, file="fifa_players.RData")

