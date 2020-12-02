### Dragon analysis ###

library("broom")

# Import data
source("R/import_dragon_data.R")


# Run model
mod <- lm(body_size ~ body_length + var1, data = dragon)
mod2 <- lm(body_sizen ~ body_length * var1, data = dragon)
mod3
tidy(mod)

newmod