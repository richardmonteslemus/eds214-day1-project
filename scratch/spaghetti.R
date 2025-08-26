library(tidyverse)
library(janitor)
library(here)

q1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))

q2 <- read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))

q3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

pmr <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))

joined_df <- q1 %>% 
  full_join(q2, )