#tanveer bariana
#homework 4?
#1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#a----------------------------------------------------------
install.packages("tidyverse")
library(readxl)
dat_Data <- read_xlsx("C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\deptOfEducationFundingbyState.xlsx")
#b----------------------------------------------------------
rownames(state.x77)
summary(state.x77)
dem_Data <- merge(dat_Data, state.x77,by.x= 1,  by.y= 0)
View(dat_Data)
View(state.x77)
View(dem_Data)
#c-----------------------------------------------------------
d<- data.matrix(dem_Data[,-1])
View(d)
maybe_thisl_matter<- cor(d)
## it appaers that area and life expectancy correlate to the federal funds the most with respective values -0.43 and 0.2029
#------------------------------------------------------------
install.packages("corrplot")
library(corrplot)
corrplot(maybe_thisl_matter, method = "number", type = 'upper')
#or
corrplot.mixed(maybe_thisl_matter, lower = "number", upper = 'circle')

#2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#a-------------------------------------------------------------
why_read <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/pima-indians-diabetes/pima-indians-diabetes.data")
#b-------------------------------------------------------------
thats_why <- c('NumPreg', 'gluc', 'diastolic', 'tricep', 'insulen', 'BMI', 'Diabetus?', 'Age', 'Class')
colnames(why_read)<- thats_why
View(why_read)
#c-------------------------------------------------------------
summary(why_read)
View(why_read)
her_vert <-why_read[which(why_read[, 2] != 0), ]
View(her_vert)
her_vert_w_NA <- her_vert
her_vert_w_NA[which(her_vert[, 6] == 0),6] <- NA
View(her_vert_w_NA)

#d----------------------------------------------------------------
val <- lm(BMI ~ tricep, her_vert_w_NA)
val
plot(her_vert_w_NA)
abline(lm(BMI ~ tricep, her_vert_w_NA), col = "red")
#abline(a = 28.9981 * x + 0.1669, col = "red")
#curve(28.9981 * x + 0.1669, add = T, col= "red")
#e--------------------------------------------------------------
install.packages("lattice")
library(lattice)
splom(her_vert_w_NA[, 1:5])
#insuline and glucose show the most corelation 
#f--------------------------------------------------------------
cbind(her_vert_w_NA, her_vert_w_NA$Age * 365)
her_vert_w_NA$Days <- her_vert_w_NA$Age * 365
View(her_vert_w_NA)