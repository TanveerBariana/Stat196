#1
#a
w <- c(45, 7, 5, 8, 11)
#b
var(w)
mean(w)
sd(w)
#c
w.sq <- w^2
#d
sum.w.sq <- sum(w.sq)
#e
n<- length(w)
(1/(n-1))*(sum.w.sq-(n*(mean(w))^2))	
#f
double.w <- w*2
mean.double.data <- mean(double.w)
sd.double.data <- sd(double.w)
#g

#2
#matrix1 <- c((1,5,3), (4,7,9), (3,2,9))
matrix1= matrix(c(1,5,3,4,7,9,3,2,9), nrow= 3, ncol= 3)
