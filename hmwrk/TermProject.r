wiki_data_raw <- read.csv(file = "C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\WikiData.csv")
str(wiki_data_raw)
sum(unique(wiki_data_raw$timestamp))
date(wiki_data_raw$timestamp)
#1 What is our daily overall clickthrough rate? How does it vary between the groups?
#what is teh daily click rate
#   how many days are there
#   how many instances of visitPage occured in that time 
#   whats the difference in groups
#possible structure
#   split by group
#   take avg of each group
#   present difference 
#   add togetehr and avg again 
wiki_data_dates <- wiki_data_raw
wiki_data_dates$timestamp <- (wiki_data_raw$timestamp) / 100000
length(unique(wiki_data_dates$timestamp))
length(unique(wiki_data_raw$timestamp))
day_avgs <- mean(wiki_data_dates[])
tempy <- c(unique(wiki_data_dates$timestamp))