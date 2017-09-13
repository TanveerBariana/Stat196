x<- c(8, 1, 22, 3, 7)
#a
if(x[3]<10){
  print("yes")
}else{
  print("no")
}
#b
for(i in 1:length(x)){
  if(x[i]<10){
    print(x[i])
  }else{
    print("not smaller than 10")
  }
}
#c
smallnums<- NULL
for(i in 1:length(x)){
  if(x[i]<10){
   smallnums[i]<- x[i]
  }
}
#2
