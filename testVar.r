#1
#a
w <- c(45, 7, 5, 8, 11)
#b
var(w)
mean(w)
sd(w)
#c
w.sq <- w ^ 2
#d
sum.w.sq <- sum(w.sq)
#e
n <- length(w)
(1 / (n - 1)) * (sum.w.sq - (n * (mean(w)) ^ 2))
#f
double.w <- w*2
mean.double.data <- mean(double.w)
mean.double.data
sd.double.data <- sd(double.w)
sd.double.data
#multiplying it by 2 simply doubles the mean and sd
mean(w * 4)
sd(w * 4)
#multiplying the set by a scalar muiltiplies the sd and mean by that scalar 
#g
mean.add.5 <- mean(w + 5)
mean.add.5
sd.add.5 <- sd(w + 5)
sd.add.5
#the mean is shifted the scalar amount, sd is unaffected
#2
#a
#matrix1 <- c((1,5,3), (4,7,9), (3,2,9))
matrix1= matrix(c(1,5,3,4,7,9,3,2,9), ncol= 3, nrow= 3)
t(matrix1)
