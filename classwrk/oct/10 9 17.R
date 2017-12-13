# 10 09 17
#this was teh day we did soem theory covering confidence intervals and error
# ^P= (#of times event occurs in simulated experiments)/(number of simulated reps of the experiment)
# p = unknown actual prob
# n= number of simulated repitions of teh experiment


#ex Absent minded secretary
#25 letters addressed to 25 nums. whats the prob the letters go to the right place
set.seed(30)
ltr.num<- sample(1:25, 25)
envelope <- c(1:25)
sum(ltr.num==envelope)
match <- ltr.num[envelope == ltr.num]
match
#now the actual one, not you bad one
set.seed(30)
ltr.num <- NULL
envelope <- 1:25

#or you know do #1 instead

first <- sample(1:6, 10000, replace = T)
second <- sample(1:6, 10000, replace = T)

sum(first > second) / 10000

#2
(1/0.005)^2
thing<- matrix(sample(0:12, 40000, replace = T), ncol = 7)
unique(thing)
