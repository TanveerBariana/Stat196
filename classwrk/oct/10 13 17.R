library(MASS)
# to see size of dataset
dim(Pima.tr)
?Pima.tr
View(Pima.tr)
summary(Pima.tr)
library(tree)
# predictive model
tree<- tree(type~.,data= Pima.tr)
tree
summary(tree)

plot(tree)
text(tree)

# sort data
pima.tr[order(Pima.tr$glu),]

under123.5<- subset(Pima.tr, glu<123.5)
View(under123.5)
# yes and no
table(under123.5$type)

over123.5<- subset(Pima.tr, glu>= 123.5)
table(over123.5$type)

summary(tree)
str(Pima.te)

Pima.test.pred<- predict(tree,Pima.te,type= "class")
Pima.test.pred
# column bind
cbind(Pima.test.pred,Pima.te$type)
# 1 is no 2 is yes
table(Pima.test.pred,Pima.te$type)
# misclassification would be (44 + 38) / 332
