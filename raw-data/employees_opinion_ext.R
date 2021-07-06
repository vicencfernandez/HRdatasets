#---- Employee Opinion -----

library(tidyverse)

#set working directory to raw-data
employees_opinion_ext <- read.csv("employees_opinion_ext.csv", sep = ";") %>% as_tibble()
employees_opinion_ext$industry <- as.factor(employees_opinion_ext$industry)
employees_opinion_ext$company <- as.factor(employees_opinion_ext$company)
employees_opinion_ext$score <- as.integer(employees_opinion_ext$score)

#set working directory to data
save(employees_opinion_ext, file="employees_opinion_ext.RData")

