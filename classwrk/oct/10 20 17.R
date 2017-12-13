#10/20/17
attach(iris)
detach(iris)
searchpaths()
# create training set for iris set 
#80 training, 70 test
set.seed(10)
train.index <- sample(1:nrow(iris), size = 80, replace = F)

iris.train <- iris[train.index,]
iris.test <- iris[-train.index,]

#fit tree w data
library(tree)
iris.tre <- tree(Species ~., data = iris.train)
summary(iris.tre)

#predict species 
preds <- predict(iris.tre, newdata = iris.test, type = 'class')
table(preds, truth = iris.test$Species)
sum(preds== iris.test$Species)/nrow(iris.test)