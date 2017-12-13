#10/23/2017

library(MASS)
? fgl
View(fgl)
n <- nrow(fgl)
grp.vect <- c(rep(1, 71), rep(2, 71), rep(3, 72))
set.seed(10)
#randomize the group 
grp.vect.rand <- sample(grp.vect, 214)
grp.vect.rand
fgl$cvG <- grp.vect.rand
View(fgl)
table(fgl$cvG)

#make tree using group 2 and 3
fgl.notOne <- subset(fgl, cvG != 1)
fgl.notOne
library(tree)
fgl.tre.NotOne <- tree(type ~ . - cvG, data = fgl.notOne)

#use tree fitted from group 2 and 3 to predict 1
fgl.groupA <- subset(fgl, cvG == 1)
fgl.groupA.pred <- predict(fgl.tre.NotOne, newdata = fgl.groupA, type = "class")
fgl.groupA
sum(fgl.groupA.pred == fgl.groupA$type) / nrow(fgl.groupA)

#do to predict 2
fgl.groupB <- subset(fgl, cvG == 2)
fgl.tre.NotTwo <- tree(type ~ . - cvG, data = subset(fgl, cvG != 2))
fgl.groupB.pred <- predict(fgl.tre.NotTwo, newdate= fgl.groupB, type= "class")
sum(fgl.groupB.pred == fgl.groupB$type) / nrow(fgl.groupB)
#do predict 3
? predict
fgl.groupC <- subset(fgl, cvG == 3)
fgl.tre.NotThree <- tree(type ~ . - cvG, data = subset(fgl, cvG != 3))
fgl.groupC.pred <- predict(fgl.tre.NotThree, newdate = fgl.groupC, type = "class")
sum(fgl.groupC.pred == fgl.groupC$type) / nrow(fgl.groupC)

#work on croos valid
