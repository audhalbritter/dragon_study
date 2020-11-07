### Dragon analysis ###

library("broom")

# Import data
source("R/import_dragon_data.R")


# Run model

mod <- lm(body_size ~ body_length, data = dragon)
tidy(mod)
