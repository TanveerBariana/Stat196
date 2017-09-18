#09/15/2017
x<- c(1, 2, 3)
y <- c(12, 23, 34)
plot(x, y, 'l')
curve(exp, from = -3, to = 3)
curve(-5* x^24, add= T, col="blue")

#excersizes
#1
x<- c(-2, 0, 5)
y<- c(3, 1, 6)
plot(x, y, 'l')
#2
curve((x^2)+1, from <- -5, to <- 5)
curve((-2*x+10), col= "green", add= T, from<- -5, to<- 5)
#3
simTos<- rbinom(10000, 1, 0.5)
numH<- cumsum(simTos)
plot(1:10000, numH/1:10000,"l")
abline(h=0.5)


