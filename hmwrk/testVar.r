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
matrix1= t(matrix(c(1,5,3,4,7,9,3,2,9), ncol= 3, nrow= 3))
#a 
col3 <- matrix1[ ,3]
#b
myelement <- matrix1[3, 2]
#c
matrix2 <- matrix(2:5, nrow = 2, ncol= 2)
#d
t(matrix1)
t(matrix2)
#it creates the transpose

#3
mynums <- matrix(c(1, 2, 3, 4), ncol= 2, nrow=2)
mynames <- c("Ruby", "Miguel", "Tiffany", "Tyler")
mylist =list(x= mynums, y= mynames)
#a
mydet <- det(mylist$x)
favename <- mylist$y[3]
