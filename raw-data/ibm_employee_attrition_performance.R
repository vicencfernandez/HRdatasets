#---- Employee Opinion -----

library(tidyverse)

#set working directory to raw-data
ibm_employees_attrition_performance <- read.csv("ibm_employee_attrition_performance.csv", sep = ",") %>% as_tibble()

#add two new employees to improve the explanation of the attirtion
ibm_employees_attrition_performance <- rbind (ibm_employees_attrition_performance, ibm_employees_attrition_performance %>% filter (Attrition=="Yes" & YearsAtCompany > 31 & YearsAtCompany < 40))

#set working directory to data
save(ibm_employees_attrition_performance, file="ibm_employee_attrition_performance.RData")

