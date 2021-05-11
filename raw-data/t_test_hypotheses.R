#---- Employee Opinion -----

library(tidyverse)

#set working directory to raw-data
employees_for_ttest <- read.csv("t_test_hypotheses.csv", sep = ",") %>% as_tibble()
employees_for_ttest$gender <- as.factor(employees_for_ttest$gender)
employees_for_ttest

#set working directory to data
save(employees_for_ttest, file="employees_for_ttest.RData")

