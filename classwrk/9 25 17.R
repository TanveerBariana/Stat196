#9/25/17

D<- matrix(1:9, nrow= 3)
D
b<- c(0, 0, 99)
D.org<- D 
D[,3]<- c(0, 0 , 99)
D<- D[,-c(3)]
D
D<- cbind(D, b)
D
d.2<- cbind(D.org[,1], b, D.org[,3])
d.2

#ex
#time it takes to work is normally distributed with mean 30 min and sd 5 min 
#time it takes to buy cofefe is normally distributed with mean 10 min and sd 3 min
#what is prob that it takes over 45 min to commute and buy cofefe

#simulate 500 commute
com.Sim<- rnorm(n= 500,mean= 30,sd= 5)
?rnorm
hist(com.Sim)
cofefe.Sim<- rnorm(500, 10, 3) 
tots.tim<- com.Sim+ cofefe.Sim
hist(tots.tim)
#monte carlo estimate of prob of communte and
#cofefe exceedes 45 min =(#of times over 45)/n  
subset(tots.tim, tots.tim> 45)
length(subset(tots.tim, tots.tim> 45))/500
# accuracy monte carlo error 1/sqrt(n)
1/sqrt(500)
#estimate is 0.18 +/- 0.04

#1
#