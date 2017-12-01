#quiz 6
library(MASS)
library(tree)
?crabs
View(crabs)
str(crabs)
#1--------------
set.seed(1)
train.inx<- sample(1:nrow(crabs), 120, T)
crabs.tr<- crabs[train.inx,]
crabs.te<- crabs[-train.inx,]
#2
trin<- tree(sp~., data = crabs.tr)
?tree
plot(trin)
text(trin)
trin
#3---------------
trin.prune<-  prune.misclass(trin, best = 7)
summary(trin.prune)
set.seed(3)
trin.cv<- cv.tree(trin, , FUN= prune.misclass, K=8)
plot(trin.cv)
#8 are optimal
#4---------------------
predi<- predict(trin, newdata = crabs.te, type= "class")
