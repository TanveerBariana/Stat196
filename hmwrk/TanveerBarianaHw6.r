#tanveer bariana
#homework 6
#----------------------------------1------------------------------------------------
#---------------a-------------------
install.packages("tidyr")
library("read.xls")
cards <- read_xls(path = "C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\cards.xls")
heads <- cards[1,]
colnames(cards) <- heads
cards<- cards[-1,]
str(cards)