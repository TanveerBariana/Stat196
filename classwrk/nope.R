for(i in 1:10){
  print("hello world")
}
for(i in 1:3){
  print(rep('*', 8), quote = F)
}
x <- c(9, 5, NA, 3)
is.na(x)
matri<- matrix(1:6, nrow = 3) 
nrow(matri)
mean(matri[1,])
mean(matri[2,])
length(matri)
ncol(matri)
rmean<- NULL
for(i in 1:ncol(matri)){
  rmean[i] <-mean(matri[i,])
  print(rmean[i])
}


#fibbonaci
fib<- c(1, 1)
for(i in 3:100){
  fib[i]<- sum(fib[i-1], fib[i-2]) 
}

rec<- function(l){
  if((l ==1)||(l== 0)){
    return(l)
  }
  return(sum(rec(l-1), rec(l-2)))
}