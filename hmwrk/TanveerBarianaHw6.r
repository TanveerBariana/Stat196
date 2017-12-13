#tanveer bariana
#homework 6
#----------------------------------1------------------------------------------------
#---------------a-------------------
install.packages("read_xls")
library("readxl")
cards <- read_excel(path = "C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\cards.xls")
heads <- cards[1,]
colnames(cards) <- heads
cards<- cards[-1,]
str(cards)
temp.col <- c(3:5, 25)
temper <- c(1:25)
temper<- temper[,-temp.col]
cards[, temp.col] <- lapply(cards[, temp.col], factor)
cards[,temper] <- lapply(cards[, temper], numeric)

#sex, education, marriage, default pay
#---------------b-------------------
set.seed(42)

#---------------c-------------------
randy<- sample(1:nrow(cards), nrow(cards)/2, F)
test <- cards[randy,]
train <- cards[-randy,]
#---------------d-------------------
library("tree")
<<<<<<< HEAD
train.fix<- train[,-1]
attach(train.fix)
str(train)
SEX ~ .
summary(train.fix)
train.tree <- tree(MARRIAGE ~ ., data = train.fix)
#--------i-------
plot(train.tree)
#--------ii------
predict(train.tree, newdata = test, type = "class")
#if tree worked i would take the missclassified and divide it by the entire numbe rof cases
#--------iii-----
#same thing but done with newdata = test$default
#----------------e--------------------
train.cv <- cv.tree(train.tree, FUN = prune.missclass)
plot(train.cv)
#optimal prune nodes is teh first value of teh min of thsi graph

#----------------f----------------------
card.prune <- prune.missclass(train.tree, best = #)
card.pred <- predict(card.prune, newdata = test, type = "class")
#----------------g----------------------

#------------------------------------2--------------------------------
#----------------a--------------------
#ther are 4 observtions that go into the 6th node
#----------------b--------------------
#75% are in versicolor, 25% are virginica, 0% are in setosa
#----------------c--------------------
#the predicted cataegory is whetehr or not the petal.width is below 1.75
#----------------d--------------------
#----------------e--------------------
-2 * (1 * log(0) + 2 * log(0.90741) + 3 * log(0.09259))
#----------------f--------------------
=======
test.tree <- tree(SEX~., test[, c(-1)])
?tree
>>>>>>> 322605fef4a94cb32b6580139e136c7f6a78b6db
