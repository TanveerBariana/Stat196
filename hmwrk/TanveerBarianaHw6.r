#tanveer bariana
#homework 6
#----------------------------------1------------------------------------------------
#---------------a-------------------
install.packages("read_xls")
library("readxl")
cards <- read_xls(path = "C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\cards.xls")
heads <- cards[1,]
colnames(cards) <- heads
cards<- cards[-1,]
str(cards)
temp.col <- c(3:5, 25)
cards[,temp.col]<-lapply(cards[ ,temp.col],factor)
#sex, education, marriage, default pay
#---------------b-------------------
set.seed(42)
#---------------c-------------------
test <- cards[which(cards$SEX == 1),]
train <- cards[-which(cards$SEX == 1),]
#---------------d-------------------
library("tree")
test.tree <- tree(test[, -1])
?tree