

# Read in necessary data
q1 <- read_csv(here("data", "QuebradaCuenca1-Bisley.csv"))

q2 <- read_csv(here("data", "QuebradaCuenca2-Bisley.csv"))

q3 <- read_csv(here("data", "QuebradaCuenca3-Bisley.csv"))

pmr <- read_csv(here("data", "RioMameyesPuenteRoto.csv"))


#Turn all columns in data frame to snake_case.

q1 <- q1 %>% 
  clean_names() 

q2 <- q2 %>% 
  clean_names() 

q3 <- q3 %>% 
  clean_names() 

pmr <- pmr %>% 
  clean_names() 

# Apply moving average function to a data frame and insert calculation into a new column called "chemical name"_cal_rolling. 

q1$ca_cal_rolling <- sapply(
  q1$sample_date, 
  moving_average,
  dates = q1$sample_date, 
  conc = q1$ca, 
  win_size_wks = 9
)

