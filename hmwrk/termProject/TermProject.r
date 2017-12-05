wiki_data_raw <- read.csv(file = "WikiData.csv")
library('data.table')
library('ggplot2')
wiki_data_raw<- data.table(wiki_data_raw)
str(wiki_data_raw)
#1 What is our daily overall clickthrough rate? How does it vary between the groups?
wiki_data_dates <- wiki_data_raw[which(wiki_data_raw$action == 'visitPage' | wiki_data_raw$action == 'searchResultPage'),]
wiki_data_dates$timestamp <- as.integer(wiki_data_dates$timestamp / 1000000)
wiki_data_dates$timestamp<- as.factor(wiki_data_dates$timestamp)
dates <- (unique(wiki_data_dates$timestamp))
daily <- NULL
for (i in 1:length(dates)) {
    daily$Aclicks[i] <- length(which(wiki_data_dates$action == 'visitPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group=='a'))
    daily$Asearchs[i] <- length(which(wiki_data_dates$action == 'searchResultPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'a'))
    daily$Bclicks[i] <- length(which(wiki_data_dates$action == 'visitPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'b'))
    daily$Bsearchs[i] <- length(which(wiki_data_dates$action == 'searchResultPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'b'))
}
daily$Aavg <- daily$Aclicks / daily$Asearchs
daily$Bavg <- daily$Bclicks / daily$Bsearchs
daily$avg <- (daily$Aclicks + daily$Bclicks) / (daily$Asearchs + daily$Bsearchs)
str(daily)
daily <- data.frame(daily)
daily$date<- dates
rownames(daily) <- as.character(dates)
View(daily)

#2 Which results do people tend to try first? How does it change day-to-day?
#what do they try first 
#   make vector of uniques sessions
#   cut that down to just teh first instance of visitPage
#   get result num 
#change day by day
#   graph with y= result num, x= day 
wiki_data_search <- data.table(wiki_data_raw)

#3 What is our daily overall zero results rate ? How does it vary between the groups ?
#4 Let session length be approximately the time between the first event and the last event in a session. Choose a variable from the dataset and describe its relationship to session length. Visualize the relationship.
#5 Summarize your findings in an executive summary.