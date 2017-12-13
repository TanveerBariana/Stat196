#a
x<- c(7, 25, 30, 9)
for(i in 1: length(x)){
  print(x[i]^2)
}
#b
sqr.x<- NULL
for(i in 1: length(x)){
  sqr.x[i]<-(x[i]^2)
}
#c
me<- matrix(sqr.x, ncol = 2)
me
for(i in 1: ncol(me)){
  print(mean(me[,i]))
}
