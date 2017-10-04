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
qnorm(0.9, mean = 10, sd = 5) #input the percentile or quantile, return the x-axis value
#5, height of normal curve it iq = 100, iq 107
dnorm(100, 100, 15)
dnorm(107, 100, 15)

