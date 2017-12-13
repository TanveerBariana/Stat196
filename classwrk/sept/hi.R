require("ggplot2")
require('animation')
install.packages('animation')
version
myList <- list(myVec=c(2,1,5), mynames = c('cat', 'dog'))
myList
myList$mynames[2]
data(mtcars)
head(mtcars)
?mtcars
mydf <- data.frame((list(name= c("andrew", "Keana"), score= c(99,100))), row.names = c('a', 'K'))
mydf

y<- c(2, 7, 9, 11)
y[-c(1, 3)]
x <- c(5, 6, 8, 20)
x <=6
nex <- x[which(x>=6)]
nex
?data
co2
hist(co2)
head(co2)
?ggplot
ggplot(co2)
chickwts
subset(chickwts, feed =="linseed")
sum(chickwts$weight >200)

y<- c(6,7,NA, 10)
#
mean(seq(from=5, to=10, by=0.3))
