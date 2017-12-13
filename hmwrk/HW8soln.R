#  HW 6 Solution:  Decision Trees and Cross-validation

########
#  1a  #
########
require(readxl)
ccData <- read_excel("C:/Users/sac87931/Downloads/default of credit card clients(1).xls",  col_names=T, skip = 1)

ccData$SEX<- factor(ccData$SEX, labels = c("M", "F"))
ccData$EDUCATION<- factor(ccData$EDUCATION, labels = c("N/A","G", "U", "HS", "Other1", "Other2", "Other3"))
ccData$MARRIAGE<- factor(ccData$MARRIAGE, labels = c("N/A","M", "S","Other1"))
ccData[,25] <- factor(ccData[[25]])
colnames(ccData)[25]<- 'default'
summary(ccData)

###############
#  1b and 1c  #
###############

set.seed(1)
n = nrow(ccData)
train.indx <- sample(1:n, n/2, replace=FALSE)
ccData.tr <- ccData[train.indx, ]
ccData.te <- ccData[-train.indx, ]

########
#  1d  #
#########
library(tree)
cred.tree <- tree(default~.-ID, data=ccData.tr)
set.seed(2) # in case there are random selections in predictions
preds <- predict(cred.tree, newdata=ccData.te, type='class')

# part i
plot(cred.tree)
text(cred.tree, pretty=FALSE)

# part ii
summary(cred.tree)
# reading from the summary output the training misclassification rate is 18.23%

sum(preds!=ccData.te$default)/nrow(ccData.te)
# misclass rate for test is 17.85%

# part iii
table(preds, truth=ccData.te$default)
#misclass for those who will default
2220/(2220+1073)
#misclass for those who won't default
458/(11249+458)

# part iv
# 4 terminal nodes from the summary

########
#  1e  #
#########
cred.cv <- cv.tree(cred.tree, FUN=prune.misclass)
plot(cred.cv)
#optimal number of terminal nodes is 2

########
#  1f  #
#########
cred.prune <- prune.misclass(cred.tree, best=2)
summary(cred.prune) 
preds.pruned <- predict(cred.prune, newdata=ccData.te, type='class')
sum(preds.pruned!=ccData.te$default)/nrow(ccData.te)
# misclass rate for pruned tree on test data is 17.85%

########
#  1g  #
#########
library(randomForest)
cred.forest <- randomForest(default~.-ID, data=ccData.tr) #OK to run on ccData
cred.forest
# the OOB (out-of-bag) error is the estimated misclassification rate
# 18.37% so about the same as the pruned tree

########
#  1h  #
#########
# mtry=4 is the default value so 1h will be exactly the same as 1g.  I didn't realize this when I wrote the question.

#-------------------Problem 2------------------------------------
#2a How many observations fell into the 6th node?  
  #54 observations

#2b Of the observations in node 6, what percent are in each species categories?
  # 0% Setosa
  # 90.7% Versicolor
  # 9.2% Virginica

#2c What is the predicted category for observations in this node? 

  #Versicolor
  
#2d According to what rule will all observations in node 6 be split in the next level of the tree?

  #Petal.Width < 1.75
  
# 2d Verify the calculated deviance of node 6 is 33.32.

  dev <- -2*(((54*.90741) * log(.90741)) + ((54*.09259)*log(.09259)))
dev

#2e Think of a set of predictor variables which would cause an observation to be sent to the right at each possible split in the tree.

# other answers are possible  
#Petal.Length = 5
#Petal.Width=2
  
