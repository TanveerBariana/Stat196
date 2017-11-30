wiki_data_raw <- read.csv(file = "C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\data\\WikiData.csv")
str(wiki_data_raw)
sum(unique(wiki_data_raw$timestamp))
date(wiki_data_raw$timestamp)
date()

#lets see if we can cut down the number of times it consideres unique down to just caring about the day
wiki_data_dates <- wiki_data_raw
#get rid of last 6 digits that mean teh hour second and minute
wiki_data_dates$timestamp <- (wiki_data_raw$timestamp) / 100000
length(unique(wiki_data_dates$timestamp))
length(unique(wiki_data_raw$timestamp))