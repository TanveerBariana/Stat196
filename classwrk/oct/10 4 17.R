#10/04/17
#pnorm(q, mean, sd)

#ex
#2, iqs are normals distributed with mean 100, sd 15
#find percent of people with iqs below 89, above 89
pnorm(89, 100, 15) #below or at
pnorm(89, 100, 15, lower.tail = F)#above 
1 - pnorm(89, 100, 15) #above 
# for continuous rand var.: P(x<89) == P(x<=89)
? pnorm

#find 90th percentile
#qnorm(prob, mean, sd)
qnorm(0.9, mean = 10, sd = 5) #input the percentile or quantile, return the x-axis value

#height of normal curve
#dnorm(x, mean, sd)
dnorm(8, mean = 10 ,sd= 5)
dnorm(10, mean = 10, sd = 5)

#3, find percent of iqs 110-140
pnorm(140, 100, 15) - pnorm(110, 100, 15)
#4, find 90th percentile
#qnorm(prob, mean, sd)
qnorm(0.9, mean = 100, sd = 15) #input the percentile or quantile, return the x-axis value
#5, height of normal curve it iq = 100, iq 107
dnorm(100, 100, 15)
dnorm(107, 100, 15)

#normal and binomial probability in R
#here how we check to see if its a binomial 
#   fixed num of tests
#   independent
#   either success or failure 
#   prob stays same from trial to trial
#   P(X=k)= (n choose k)p^k(1-p)^(n-k)
#       for k= 0:n
#1==============================
#a--------------------
#i
pnorm(60, 64, 2.5)
#ii
pnorm(72, 64, 2.5)
#iii
pnorm(65, 64, 2.5)-pnorm(61, 64, 2.5)

#toss biased coin 10 times, prob of head = 0.6
#rand generate one expt
rbinom(5, 10, 0.6)
#P(four heads) in 10 tosses of coin
rbinom(4, 10, 0.6)
dbinom(4, 10, 0.6)
dbinom(6, 10, 0.6)
dbinom(0:10, 10, 0.6)