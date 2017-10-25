#TAnveer bariana
#homework 5

#11111111111111111111111111111111111111111111111111111111111111111111111
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    #p(5 in 30) p(l)= .1
plefty <- choose(30, 5) * (.1 ^ 5) * (.9 ^ 25)
dbinom(5, 30, .1)
#bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
pdistX<- dbinom(1:30, 30, .1)
#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
plot(pdistX, type= 'h')
#ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
pLeftChair <- pbinom(4, 30, .1)
#22222222222222222222222222222222222222222222222222222222222222222222222
#mean 7, sd 1.2
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
overNine <- 1 - pnorm(9, 7, 1.2)
#bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
nice <- pnorm(8, 7, 1.2) - pnorm(6, 7, 1.2)
#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
qnorm(.85, 7, 1.2)
#ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
sam <- sample(5.8:9.2, 10, T)
mean(sam)
sd(sam)
#eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
saem <- sample(5.8:9.2, 10000, T)
mean(saem)
sd(saem)
#33333333333333333333333333333333333333333333333333333333333333333333333
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
#well say anything outside of this[-3:3] is negligable  
nor <- (sample(-3:3, 10000, T)) ^ 2
#bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
pnorm(2, mean(nor), sd(nor))
#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
pchisq(2, 1)
#i think i messed up/ they are very differnt, maybe complements
#44444444444444444444444444444444444444444444444444444444444444444444444
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
facty <- 1/(factorial(0:100))
#bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
factyPrime<- NULL
factyPrime <- cumsum(facty)
#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
plot(c(0:100), factyPrime)
abline(h = exp(1), col = "red")
#i cant get the graph to go high enough to show e
