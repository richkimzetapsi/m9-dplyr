# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package


# Which Accura model has the best hwy MPG in 2015? (without method chaining)


# Which Accura model has the best hwy MPG in 2015? (nesting functions)


# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times


library("dplyr")

library('devtools')

library("fueleconomy")

as.data.frame('vehicles')

acura<-filter(vehicles, make %in% c("Acura"))

acurampg<-filter(acura,max(hwy)==hwy)

bestacura<-select(acurampg,model)

unique(bestacura$model)


(select((filter((filter(vehicles, make %in% c("Acura"))),max(hwy)==hwy)),model))

       
filter(vehicles, make %in% c("Acura")) %>%

filter(max(hwy)==hwy) %>%

select(model) %>%
  unique()
