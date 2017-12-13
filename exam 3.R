#tanveer bariana  
#exam 3

#1
library(MASS)
library(ggplot2)
str(Boston)
?Boston
Boston$chas<- factor(Boston$chas)
rand<- ggplot(data= Boston, aes(x= rm, y = medv, color= chas))+geom_point()
rand

#2
library(RSQLite)
#a
myconn<- dbConnect(drv= SQLite(), ":memory:")
#b
dbWriteTable(con= myconn,name= "carsdata", value= Cars93)
#c
dbListTables(myconn)
#d
dbListFields(myconn, 'carsdata')
#e
dbGetQuery(myconn, "SELECT Price,Horsepower From carsdata")
#f
dbGetQuery(myconn, "SELECT * From carsdata WHERE Type = 'Compact'")
#g
View(Cars93)
dbGetQuery(myconn, "SELECT Type,AVG(Price) From carsdata GROUP BY Type")
