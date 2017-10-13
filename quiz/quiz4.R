#quiz 4
#1
curve((x^3)+(x^2)-3, from <- -5, to <- 5)
#a #b
x<- c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5)
y<- 20*x+7
points(x, y, type = "l",col= "red")
?plot


#2
x.matrix<- matrix(c(4,3, 5, 8),nrow=2,byrow=T)
x.matrix
#a
x.matrix*x.matrix
#b
solve(x.matrix)
#c
x.matrix %*% solve(x.matrix)
