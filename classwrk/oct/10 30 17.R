#10/30
#kaggle_________________________________________________________________________
test <- read.csv("C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\kaggleHouse\\test.csv")
train <- read.csv("C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\kaggleHouse\\train.csv")
#_______________________________________________________________________________
#its grpahical time
x<- seq(0, 2*pi, by=0.1)
y<- sin(x)
plot(x, y, type = 'l')
points(x, cos(x), type = 'l', col = 'red')
abline(-1, .25, col = 'blue')
