library(tidyverse)
library(janitor)
library(here)

q1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))

q2 <- read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))

q3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

pmr <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))


# joined_df <- q1 %>% 
#   full_join(q2, by = "Sample_ID") %>% 
#   full_join(q3, by = "Sample_ID") %>% 
#   full_join(pmr, by = "Sample_ID")


# date <- joined_df %>% 
#   mutate(year = lubridate::ymd(Sample_Date.x))
# 
# 
# sample_data_test <- q1 %>% 
#   mutate(year = lubridate::ymd(Sample_Date)) 
# 
# 
# 
# start <- as.Date(sample_data_test$Sample_Date[1], format="%yyyy/%mm/%dd")
# finish <- as.Date(sample_data_test$Sample_Date[3], format="%yyyy/%mm/%dd")
# 
# date_diff <- as.numeric(finish-start)
# date_diff
#   
# 
# 
# vector_9day <- vector(mode = "numeric", length = length(sample_data_test$Sample_Date))
# 
# for (i in seq_along(sample_data_test$Sample_Date)){
#   start <- as.Date(sample_data_test$Sample_Date[1], format="%yyyy/%mm/%dd")
#   finish <- as.Date(sample_data_test$Sample_Date[i], format="%yyyy/%mm/%dd")
#   date_diff <- as.numeric(finish-start)
#   vector_9day[i] <- date_diff
# }
# 
# sample_data_test <- sample_data_test %>% 
#   mutate(days_since_start = vector_9day)
# 
# # mutate(nine_day_moving_avg = mean())
# 
# 
# vector_moving_mean <- vector(mode = "numeric", length = length(sample_data_test$Sample_Date))
# 
# if subset_sample_data_test$days_since_start  =< 63
# 
# subset_sample_data_test <- sample_data_test %>% 
#   filter(days_since_start < 63) %>% 
#   mutate(moving_mean_k = mean(K, na.rm = TRUE)) 
# 
# vector_moving_mean[] <- subset_sample_data_test[["moving_mean"]]
# 
# subset_sample_data_test_1 <- sample_data_test %>% 
#   filter(days_since_start  63) %>% 
#   mutate(moving_mean = mean(days_since_start))
# 


<<<<<<< HEAD
=======

start <- as.Date(sample_data_test$Sample_Date[1], format="%yyyy/%mm/%dd")
finish <- as.Date(sample_data_test$Sample_Date[3], format="%yyyy/%mm/%dd")

date_diff <- as.numeric(finish-start)
date_diff
  


vector_9day <- vector(mode = "numeric", length = length(sample_data_test$Sample_Date))

for (i in seq_along(sample_data_test$Sample_Date)){
  start <- as.Date(sample_data_test$Sample_Date[1], format="%yyyy/%mm/%dd")
  finish <- as.Date(sample_data_test$Sample_Date[i], format="%yyyy/%mm/%dd")
  date_diff <- as.numeric(finish-start)
  vector_9day[i] <- date_diff
}

sample_data_test <- sample_data_test %>% 
  mutate(days_since_start = vector_9day)


  # mutate(nine_day_moving_avg = mean())
>>>>>>> 450b102e2df10bebe48b7c6abad3abf49c5d3ace
