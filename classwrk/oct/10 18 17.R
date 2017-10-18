#10/18/17
install.packages("rpart")
library(rpart)
install.packages("xgboost")
library(xgboost)
install.packages("tidyr")
# time to start pruning 
#make bootstrap sample__________________________________________________-
library(MASS)
set.seed(3)
index<- sample(1:nrow(Pima.tr), 20, T)
index
length(unique(index))
botsrtpSmple <- Pima.tr[index,]
botsrtpSmple

install.packages("randomForest")
library(randomForest)
pimer.Forest <- randomForest(type ~ ., data = Pima.tr)
pimer.Forest

library(ggplot2)
p <- ggplot(Pima.tr, aes(x = glu, y = age, col = type)) + geom_point()
p