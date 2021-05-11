#---- Employee Opinion -----

library(tidyverse)

#set working directory to raw-data
employees_opinion <- read.csv("employees_opinion.csv", sep = ";") %>% as_tibble()
employees_opinion$assessment <- as.factor(employees_opinion$assessment)

#set working directory to data
save(employees_opinion, file="employees_opinion.RData")

