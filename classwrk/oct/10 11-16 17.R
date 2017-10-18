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
install.packages('tree')
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

#10/16/17
#here how prunning works
#it splits tree into folds, then it makes a tree wi one fold missing
#then it predicts value of fold left out and compares the error
#does this iteration through missing every fold
#we about to run a 10 fold validation 
set.seed(561)
pima.cv<- cv.tree(pima.tree, FUN =  prune.misclass, K =  10)
pima.cv
plot(pima.cv)

pima.prune <- prune.misclass(pima.tree, best = 5)
plot(pima.prune)
text(pima.prune, pretty = T)
pima.prune.pred <- predict(pima.prune, newdata = Pima.te)


?read.csv
#now we play with data
ablone <- read.csv("http://archive.ics.uci.edu/ml/machine-learning-databases/abalone/abalone.data", header = F)
View(ablone)
names(ablone)<- c('sex', 'leng', 'diam', 'ht', 'wholeweight', 'swt','vwt', 'shellwt', 'rings')
library(tree)
abalone.Tree <- tree(sex ~ ., data = ablone)
plot(abalone.Tree)
text(abalone.Tree)
abalone.Tree

str(ablone)
str(abalone.Tree)
ablone$sex <- factor(ablone$sex)
abalone.Tree <- tree(sex ~ ., data = ablone)
Summary(abalone.Tree)
head(abalone.Tree)
str(ablone)