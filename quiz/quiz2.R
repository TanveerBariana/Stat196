#1
#the string will be surrounded by quotes

#2
for(i in 1:3){
  print(rep('*', 6), quote= FALSE)
}
#3
for(i in 7:1){
  print(rep('*', i), quote= FALSE)
}
#4
for(i in 6:1){
  x<- c(rep('*', i), rep(' ', 2*(6-i)), rep('*', i))
  print(x, quote= FALSE)
  
}