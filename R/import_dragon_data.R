# Load libraries
library("tidyverse")


# Import dragon data set
dragon_raw <- read.csv("dragon.csv")


# Clean dragon data

dragon <- dragon_raw %>% 
  filter(!is.na(value)) %>% 
  rename(site = location, date = 'Date of collection') %>% 
  mutate(date = ymd(date))
  