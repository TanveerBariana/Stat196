#10/11/15
library(MASS)
Pima.tr
View(Pima.tr)
?tapply
#calculate teh mean glucose level
mean(Pima.tr$glu)
tapply(Pima.tr$glu, Pima.tr$type, FUN= mean)
?Pima.tr

oima.num<- Pima.tr[,-8]
View(oima.num)
blue<- oima.num[,1:5]
blue<- cbind(oima.num[,1:3], oima.num[5:7])
View(blue)
cor(oima.num)
?cor

names<- c("amanda", 'Oscar', "Taylor", 'Alice', 'Jason', 'Caleb', 'Christian')
driveSpeed<- c(40, 30, 50, 45, 55, 20, 60)
Car.c<- c('r', 'b', 'r', 'b', 'b', 'b', 'r')
data<- data.frame(cbind(names, driveSpeed, Car.c))
data[order(data$driveSpeed),]
