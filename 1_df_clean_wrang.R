library(tidyverse)
library(janitor)
library(here)
library(dplyr)
source(here("R", "moving_average.R"))

# Read in necessary data
q1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv")) %>% clean_names()

q2 <- read_csv(here("data", "QuebradaCuenca2-Bisley.csv")) %>% clean_names()

q3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv")) %>% clean_names()

pmr <- read_csv(here("data", "RioMameyesPuenteRoto.csv")) %>% clean_names()


# Apply moving average function to a data frame and insert calculation into a new column called "chemical name"_cal_rolling. 

# Join all data frames
joined_sites <- q1 %>% 
  full_join(q2) %>% 
  full_join(q3) %>% 
  full_join(pmr) 

# Use filter to select the desired date range.
joined_sites <- joined_sites %>% 
  filter(sample_date <= "1994-06-01", sample_date >= "1988-01-01") 


saveRDS(joined_sites, file = here("outputs","joined_sites.rds"))

