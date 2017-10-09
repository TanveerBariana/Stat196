#10/2/17
#stuff for hmwrk
hw <- c(90, 35, 100, 77, 80)
final <- c(86, 27, 91, 65, 81)
modle <- lm(final ~ hw)
#formula is in form y ~ x, where y is what you want to predict and xi s one or more teh predictors
#its the best fitting line. regression 

? lm
modle
modle$coefficients
plot(hw, final, pch = 13)

abline(-8.28, 1.0245)
abline(modle)
class(modle)
? plot(lm)

cor(hw, final)
#correlation 

#-----------------------------------notrs for day

seeds <- read.csv("http://www.csus.edu/indiv/n/norrisa/statcomp/seeds.csv")
drink <- read.csv("http://www.csus.edu/indiv/n/norrisa/statcomp/classBeverage.csv")
favNum <- read.csv("http://www.csus.edu/indiv/n/norrisa/statcomp/ClassfavoriteNumData.csv")
everything <- merge(drink, favNum, by.x = "Name", by.y = "Name", all= T)
everything
? merge
everything$sqrtNumPets <- sqrt(everything$NumPets)
everything

everything$petIndi <- ifelse(everything$NumPets > 0, "Y", "N")


everything$CoffeeorTea[1] <- NA

? complete.cases
complete.cases(everything)
erything2<- everything[complete.cases(everything),]