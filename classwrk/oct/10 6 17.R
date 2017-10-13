#10/06/17
View(state.x77)
library(readxl)
data <- read_xlsx("//sacfiles1/home/t/tanveerbariana/Desktop/data/deptOfEducationFundingbyState.xlsx", skip = 6)
data2<- read_xls("https://sacct.csus.edu/bbcswebdav/pid-2985505-dt-content-rid-12782216_1/xid-12782216_1")
data3<- merge(state.x77, data, by.x= 0, by.y= 1)

View(data)
summary(state.x77)

#yesterdays 
dbinom(0:4, size = 10, prob= 0.6)
pbinom(4, 10, .6)
sum(dbinom(0:4, size = 10, prob= 0.6))
qbinom(0.9, 10, .6)
pbinom(8, 10, .6)

#2
#a
dbinom(3, 10, 0.2)
#b
pbinom(3, 10, .2, lower.tail = T)
#c
pbinom(4, 10, 0.2, lower.tail = F)
#d
pbinom(6, 10, 0.2)-pbinom(4, 10, 0.2)
?sample
sample(1:6, 10, replace = T)
set.seed(167)
#sim 1000 of pair of dice

myToss<- sample(1:6, 2000000, replace = T)
myT<- matrix(myToss, ncol = 2)
summy <- apply(myT, 1, sum)
mySummy<- cbind(myT, summy)
mySummy
sum(mySummy[,3]==7)
proby<- sum(mySummy[,3]==7)/1000000
proby
1/6
