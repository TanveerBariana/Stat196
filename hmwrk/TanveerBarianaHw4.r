#tanveer bariana
#homework 4?
#1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#a--------------------------------------------------------
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
#c------------------------------------------------------------
d<- data.matrix(dem_Data[,-1])
View(d)
maybe_thisl_matter<- cor(d)
## it appaers that area and life expectancy correlate to the federal funds the most with respective values -0.43 and 0.2029
#d-----------------------------------------------------------------
install.packages("corrplot")
library(corrplot)
corrplot(maybe_thisl_matter, method = "number", type = 'upper')
#or
corrplot.mixed(maybe_thisl_matter, lower = "number", upper = 'circle')

#2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#a----------------------------------------------------------------
why_read <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/pima-indians-diabetes/pima-indians-diabetes.data")
#b----------------------------------------------------------------
thats_why <- c('NumPreg', 'gluc', 'diastolic', 'tricep', 'insulen', 'BMI', 'Diabetus?', 'Age', 'Class')
colnames(why_read)<- thats_why
View(why_read)
#c
summary(why_read)
sum(is.na.data.frame(why_read))
View(why_read)
summary()