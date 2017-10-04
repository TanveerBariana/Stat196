
#9/18/2017
mymat<- matrix(1:9, nrow = 3, ncol = 3)
mymat
mymat2<- matrix(1:9, nrow = 3, byrow = T)
mymat2
mymat3<- matrix(NA, 2, 2)
mymat3[1, 1]<- 6

y<- matrix(c(2, 4, 3, 1), 2)
y
x<- matrix(c(3, 2, 0, 1), 2)
x
5*x
x*y
x%*%y
x
y
#ex
z<- matrix(c(1,1,2,4,6,3,7,8,7), nrow = 3, byrow = T)
z
#1
z.i<- solve(z)
#2
z %*% z.i
#3
z^2
z

rowMean<- apply(z, 1, mean)
rowMean
colSum <- apply(z, 2, sum)
colSum
bigMat<- apply(z, 1:3)

#central limit ex
sample <- runif(500)
mean(sample)
hist(sample)

#1
matty <- matrix(runif(1000), 200, 5)
#2
hist(matty)
#3
rowmeans <- apply(matty, 1, mean)
hist(rowmeans)
trut <- sqrt((1 - 0) ^ 2 / 12) / sqrt(5)
abline(v=0.5, col="red")

grid <- seq(from <- 0, to = 1, by = 0.01)
points(grid, dnorm(grid, mean = 0.5, sd = ))