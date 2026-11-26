# this is my simple analysis file
library(tidyverse)
library(broom)

bogus_data <- read.csv("bogus_data.csv")

head(bogus_data)

mean_milk_consumption <- mean(bogus_data$milk_consumption)

mean_divorce_rate <- mean(bogus_data$divorce_rates)

cor_result <- cor.test(bogus_data$milk_consumption, bogus_data$divorce_rates)

cor_result_tidy <- cor_result %>% broom::tidy()

save(
  mean_milk_consumption,
  mean_divorce_rate,
  cor_result_tidy,
  file = "bogus_cor_results.rData"
)
