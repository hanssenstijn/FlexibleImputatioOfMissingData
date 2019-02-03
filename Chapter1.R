# clear WS
rm(list = ls())

# library
library(mice)
# this command eliminates the error message once and for all. if a dataset contains NA
# and one want to apply methods on it
options(na.action = na.omit)

# based on all observed data;  using pariwise
cor(airquality, use = "pair")

# Comprehensive R Archive Network (CRAN)

# regression imputations
fit <- lm(Ozone ~ Solar.R, data = airquality)
pred <- predict(fit, newdata = ic(airquality))

# Stochastic regression imputation
# This method rst estimates the intercept, slope
# and residual variance under the linear model, then generates imputed value according to these specication.
imp <- mice(airquality[, 1:2], method = "norm.nob",
            m = 1, maxit = 1, seed = 1)

