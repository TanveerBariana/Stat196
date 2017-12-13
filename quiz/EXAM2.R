#tanveer bariana
#exam 2 makeup

#1
#a
pbinom(15, 28, 0.45)
#b
dbinom(10, 28, 0.45)
#c
pbinom(15, 28, 0.45, lower.tail = FALSE)
#d
plot(0:28, dbinom(0:28, 28, .45) )
#e
qbinom(.8, 28, .45)

#3
#a
correct<- NULL
for(i in 1:1000){
  sam<- sample(1:10, 3)
  correct[i]<- (sam[1]+sam[2]>sam[3])
}
sum(correct)/1000
