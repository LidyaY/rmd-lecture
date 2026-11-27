# this is my separate analysis file
library(tidyverse)
library(broom)

bogus_data <- read.csv("./data/bogus_data.csv")

head(bogus_data)

mean_milk_consumption <- mean(bogus_data$milk_consumption)

mean_divorce_rate <- mean(bogus_data$divorce_rates)

cor_result <- cor.test(bogus_data$milk_consumption, bogus_data$divorce_rates)

cor_result_tidy <- cor_result %>% broom::tidy()

# save the objects from your analysis results as .rData file
save(
  mean_milk_consumption,
  mean_divorce_rate,
  cor_result_tidy,
  file = "bogus_cor_results.rData"
)
