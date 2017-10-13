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

#cleaning up pima data set
?Pima.tr
?Pima.te
View(Pima.tr)
library(tree)
pima.tree<- tree(formula= type~. , data = Pima.tr)
pima.tree
summary(pima.tree)
plot(pima.tree)
text(pima.tree)
#sort data
Pima.tr[order(Pima.tr$glu), ]

under123<- subset(Pima.tr, glu < 123.5)
table(under123$type)
over123<- subset(Pima.tr, glu >= 123.5)
table(over123$type)
summary(pima.tree)
str(Pima.te)
pima.test<- predict(pima.tree, Pima.te, type = 'class')
pima.test
cbind(pima.test, Pima.te$type)
table(pima.test, Pima.te$type)
(44+48)/332
10/332
