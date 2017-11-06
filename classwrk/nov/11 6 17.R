#11/06/17
#today is ggplot 
library(ggplot2)
#ggplot2(data= , mapping= aes(x, y, <aesthetics>))
plots <- ggplot(data = mtcars, aes(x = mpg))
plots + geom_histogram(binwidth = 2)
plots + geom_histogram(col = "red", binwidth = 2) + theme_minimal()

mtcars$cyl<- factor(mtcars$cyl)
mtcars$am<- as.factor(mtcars$cyl)
p1 <- ggplot(data = mtcars, aes(x = mpg, y = disp, color = cyl, shape = am))
p1 + geom_point()


#use chick wieght data obtain the sub set whith 21 weeks
str(ChickWeight)
chicks_at_21_weeks <- subset(ChickWeight, Time == 21)
View(chicks_at_21_weeks)
chicks_at_21_weeks$Diet <- factor(chicks_at_21_weeks$Diet)
ChickWeight$Diet <- factor(ChickWeight$Diet)
ChickWeight$Chick <- factor(ChickWeight$Chick)
f <- ggplot(ChickWeight, aes(x = Time, y = weight, shape = Diet, col= Chick))
f + geom_point()
#rcolor 
library(RColorBrewer)
display.brewer.all()
#seperate smooth 
p2<- ggplot(chicks_at_21_weeks, aes(x = weight))+ geom_dotplot(aes())