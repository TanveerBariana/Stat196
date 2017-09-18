#hmwrk2
smallTen <- NULL
loc<- NULL
#1
#a
x <- c(2, 10, 57, NA, 7.6, NA, 200, 9)
#b
for (i in 1:length(x)) {
  if (x[i] < 10) {
    smallTen <- c(smallTen, x[i])
    #c
    loc<- c(loc, i)
  }
}
#d
sd(x)
#e
sum(is.na(x))
#f
na.omit(x)
is.na(x)
!is.na(x)
#! is useful if you wnated to loop through teh vecor indexes and add the elements to a new vector if they were not NA

#2
xi <- 1 
n<- 3
for(i in 1:n+1){
  xi<- ((xi^2)+9)/(2*xi)
}
xi
17/5
