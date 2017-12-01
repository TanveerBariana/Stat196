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
#take the totol number of clicks on search results and divide it by the number of days to get the avg daily propertion 
sum(wiki_data_raw$action == 'visitPage') /length(unique(wiki_data_dates$timestamp))
length(unique(wiki_data_raw$timestamp))
day_avgs <- mean(wiki_data_dates[])
tempy <- c(unique(wiki_data_dates$timestamp))

#2 Which results do people tend to try first? How does it change day-to-day?
#what do they try first 
#   make vector of uniques sessions
#   cut that down to just teh first instance of visitPage
#   get result num 
#change day by day
#   graph with y= result num, x= day 
wiki_data_search<- wiki_data_raw$action== 

#3 What is our daily overall zero results rate ? How does it vary between the groups ?
#4 Let session length be approximately the time between the first event and the last event in a session. Choose a variable from the dataset and describe its relationship to session length. Visualize the relationship.
#5 Summarize your findings in an executive summary.