wiki_data_raw <- read.csv(file = 'C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\hmwrk\\termProject\\WikiData.csv')
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

wiki_data_search <- data.table(wiki_data_raw)
wiki_data_search <- wiki_data_search[which(wiki_data_raw$action == 'visitPage'),]
wiki_data_search$result_position <- as.factor(wiki_data_search$result_position)
wiki_data_search <- wiki_data_search[-which(is.na(wiki_data_search$result_position)),]
head(sort(summary(wiki_data_search$result_position), decreasing = T))[1]
     

#over all peopel tend to choose teh first result
wiki_data_search_daily <- wiki_data_search
wiki_data_search_daily$timestamp <- as.integer(wiki_data_search_daily$timestamp/1000000)
wiki_data_search_daily$timestamp<- as.factor(wiki_data_search_daily$timestamp) 

setkey(wiki_data_search_daily, timestamp)

charDates <- as.character(dates)
dets<- NULL
for (i in 1:length(charDates)) {
    temp <- wiki_data_search_daily[.(charDates[i])]
    print(" the most likey result picked for date ", )
    print(charDates[1])
    print(" is ")
    print(head(sort(summary(temp$result_position), decreasing = T))[1])
    dets[i] <- head(sort(summary(temp$result_position), decreasing = T))[1]         
}
dets<-wiki_data_search_daily[.(dats)]
#3 What is our daily overall zero results rate ? How does it vary between the groups ?
#4 Let session length be approximately the time between the first event and the last event in a session. Choose a variable from the dataset and describe its relationship to session length. Visualize the relationship.
#5 Summarize your findings in an executive summary.