#hmwrk2
smallTen <- NULL
loc<- NULL
#1
#a
x <- c(2, 10, 57, NA, 7.6, NA, 200, 9)
#b
for (i in 1:length(x)) {
        if (is.na(x[i]) == F && x[i] < 10 ) {
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
for(i in 2:n){
  xi<- ((xi^2)+9)/(2*xi)
}
#a
xi
17/5
#b
xi <- 1 
fiveH<-xi
for(i in 2:500){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}

#it converges to 3

#c
xi <- 300
fiveH<-xi
for(i in 2:600){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}
options(digits=22) 

#it converges to 3 VERY EARLY

#d
xi <- 3000
fiveH<-xi
for(i in 2:100){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}
xi <- 0.2
fiveH<-xi
for(i in 2:600){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}
xi <- 5
fiveH<-xi
for(i in 2:600){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}
#no it doesnt matter

