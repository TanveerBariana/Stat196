#quiz 5
#1
?pnorm
#a
pnorm(1, 1.2, 0.3, lower.tail = T)
#b
pnorm(1.9, 1.2, 0.3, lower.tail = F)
#c
pnorm(1.5, 1.2, 0.3, lower.tail = T)-pnorm(0.9, 1.2, 0.3, lower.tail = T)
#d

#e
set.seed(15)
for(i in 1:30){
  #DO ABOVE
}

#2
matr<- NULL
for(i in 1:10000){
 hi<- sample(1:10,3)
 matr< cbind(hi, matr)
}
myT<- matrix(hi, ncol = 3)
summy <- apply(myT, 1, sum)
mySummy<- cbind(myT, summy)
mySummy
sum(mySummy[,3]==11)
proby<- sum(mySummy[,3]==11)/30000
