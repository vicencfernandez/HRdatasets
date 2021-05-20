#---- Employee Opinion -----

library(tidyverse)

#set working directory to raw-data
employees_attrition <- read.csv("employees_attrition.csv", sep = ",") %>% as_tibble()

#set working directory to data
save(employees_attrition, file="employees_attrition.RData")

