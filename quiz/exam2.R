#tanveer bariana
#exam 2
#1---------------------------------------------

#a--------------------
(.77^20)*(.23^10)*choose(30,20)
#b--------------------
sum(dbinom(1:20, 30, .77))
#c--------------------
dbinom()
#d--------------------
pdistX<- dbinom(1:30, 30, .77)
plot(pdistX, type= 'h')
#2---------------------------------------------
#a--------------------
data<-read.csv("http://www.csus.edu/indiv/n/norrisa/kidneydata.csv")
str(data)
#b--------------------
is.factor(data$class)
#c--------------------
set.seed(113)
#d--------------------
ran_index<- sample(1:nrow(data), (nrow(data)/2)-1, F)
train<- data[-ran_index,]
test<- data[ran_index,]
#e--------------------
library("tree")
data.tree<- tree(class~. -X, data = train)
#f--------------------
summary((data.tree))
#its 0.02
#g--------------------
plot(data.tree)
text(data.tree)
#h--------------------
data.tree.cv<- cv.tree(data.tree, FUN = prune.misclass)
plot(data.tree.cv)
#its 2
#i--------------------
deviance()


#3-----------------------------------------------
#a--------------------
correct<- NULL
for(i in 1:10000){
  sam<- sample(1:6, 5 , T)
  correct[i]<- unique(sam)==5
}
sum(correct)/10000
#b---------------------

#4------------------------------------------------
#a----------------------
View(mtcars)
?mtcars
#5potential factors, 0 actual listed factor
#b-----------------------
mtcars$cyl<- as.factor(mtcars$cyl)
str(mtcars)
summary(mtcars$cyl)
#c-----------------------
ind<- sample(1:nrow(mtcars), 32, F)
cars.bt<- mtcars[ind,]
cars.tree<- tree(cyl~., data= cars.bt)
predict()
#4-----------------------
#a bootstrapped random forrest, or bagging aggregation model