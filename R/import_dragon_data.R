# Load libraries
library("tidyverse")


# Import dragon data set
dragon_raw <- read.csv("dragon.csv")


# Clean dragon data
dragon <- dragon_raw %>% 
  filter(!is.na(value)) %>% 
  rename(site = location, date = 'Date of collection')

# histogram
ggplot(dragon, aes(x = body_size, colour = site)) +
  geom_hist()

# add plot to check data
ggplot(dragon, aes(x = body_length, y = body_size, colour = site)) +
  geom_point()