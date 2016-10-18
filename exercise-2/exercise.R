install.packages("dplyr")

library("dplyr")

library('devtools')

library("fueleconomy")

as.data.frame('vehicles')

vehicles1997 <- filter(vehicles, year %in% c("1997"))

unique(vehicles$year)

twowheel<- filter(vehicles,drive %in% c('2-Wheel Drive'),cty>20)

mtcars.named <- mutate (mtcars, car.name = row.names (mtcars))

four.cyl <- filter(mtcars.named, cyl ==4)

best.four.cyl <- filter (four.cyl, mpg ==max(mpg))
