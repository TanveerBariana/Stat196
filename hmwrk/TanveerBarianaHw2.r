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
#! is useful if you wnated to loop through the vecor indexes and add the elements to a new vector if they were not NA

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
xi <- 0
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
xi <- -30000000
fiveH<-xi
for(i in 2:600){
  xi<- ((xi^2)+9)/(2*xi)
  fiveH<- c(fiveH, xi)
}
#the sign matters, except 0, where it dies

#e
plot(1:600, fiveH)


#3
#?mtcars
View(mtcars)
#a
dim(mtcars)
#it shows the Num of observations then the number of variables 

#b
class(mtcars)

#c
which(mtcars$cyl == 4)
#d
fourcylinder <- data.frame(NULL)
for (i in mtcars[, (1:(dim(mtcars)[2]))) {
    cbind(fourcylinder, i)
}
#e
fourcylinder <- mtcars[which(mtcars$cyl == 4),]
#f
autofour <- fourcylinder[which(fourcylinder$am == 0),]
mpg <- mean(autofour[, 1])

#4

#a
x.grid <- seq(from = -2, to = 2, by = 0.01)
y <- (x.grid)^2 #look inside y, it is a vector
plot(x.grid, y, type = "l")
#b
wHMean <- rnorm(n = 500, mean = 65, sd = 3.5)
#c
hist(wHMean, freq = FALSE)
#d
curve(dnorm(x, mean = 65, sd = 3.5), add = TRUE)

#5

x <- c(3, 7, 10, 5, 22, 11)
#a
w <- NULL
for (i in 1:length(x)) {
    w[i] <- x[i]^3
}
#b
w <- x ^ 3
#c
myproducts <- NULL
for (i in 2:length(x)) {
    myproducts<- c(myproducts, (x[i] * x[i-1]))
}

#6
fibbo <- 1
for (i in 1:29) {
    fibbo <- c(fibbo, sum(fibbo[i], fibbo[i-1])) 
}
#a
? ifthen
adds<- NULL
for (i in fibbo) {
    if (i %% 2 == 0) {
        adds<- sum(adds, i)
    } else {
        #idk, do something else. see if i care R
    }
}
#b
here<- sum(fibbo[fibbo %% 2 ==0])