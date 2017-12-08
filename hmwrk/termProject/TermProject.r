wiki_data_raw <- read.csv(file = 'C:\\Users\\tanve\\Desktop\\dataSci\\stat196\\hmwrk\\termProject\\WikiData.csv')
library('data.table')
library('ggplot2')
wiki_data_raw<- data.table(wiki_data_raw)
str(wiki_data_raw)
#1 What is our daily overall clickthrough rate? How does it vary between the groups?
#make a data set of teh instances some one got to a search page or clicked on a result 
wiki_data_dates <- wiki_data_raw[which(wiki_data_raw$action == 'visitPage' | wiki_data_raw$action == 'searchResultPage'),]
#cut out the section of the time stamp for hour, minute, or seconds so that you can get the dates. then make it a factor
wiki_data_dates$timestamp <- as.integer(wiki_data_dates$timestamp / 1000000)
wiki_data_dates$timestamp <- as.factor(wiki_data_dates$timestamp)
#save the dates for use later
dates <- (unique(wiki_data_dates$timestamp))
#for each date fill a data table withs its number of clicks and searches based on groups
daily <- NULL
for (i in 1:length(dates)) {
    daily$Aclicks[i] <- length(which(wiki_data_dates$action == 'visitPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group=='a'))
    daily$Asearchs[i] <- length(which(wiki_data_dates$action == 'searchResultPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'a'))
    daily$Bclicks[i] <- length(which(wiki_data_dates$action == 'visitPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'b'))
    daily$Bsearchs[i] <- length(which(wiki_data_dates$action == 'searchResultPage' & wiki_data_dates$timestamp == dates[i] & wiki_data_dates$group == 'b'))
}
#use the data gathered above to get the averages below 
daily$Aavg <- daily$Aclicks / daily$Asearchs
daily$Bavg <- daily$Bclicks / daily$Bsearchs
daily$avg <- (daily$Aclicks + daily$Bclicks) / (daily$Asearchs + daily$Bsearchs)
daily <- data.frame(daily)
daily$date <- dates
#make the row names the dates for ease of understanding
rownames(daily) <- as.character(dates)
#graph teh findings 
clickthrough <- ggplot(data = daily, aes(x = daily$date, y = daily$avg))
clickthrough <- clickthrough + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
clickthrough <- clickthrough + ggtitle('Over all daily Avg for each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
clickthrough
clickthroughA <- ggplot(data = daily, aes(x = daily$date, y = daily$Aavg))
clickthroughA <- clickthroughA + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
clickthroughA <- clickthroughA + ggtitle('Daily Avg for group A on each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
clickthroughA
clickthroughB <- ggplot(data = daily, aes(x = daily$date, y = daily$Bavg))
clickthroughB <- clickthroughB + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
clickthroughB <- clickthroughB + ggtitle('Daily Avg for group B on each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
clickthroughB


#2 Which results do people tend to try first? How does it change day-to-day?
#new data table for new manipulation, similar process of setting it up as above
wiki_data_search <- data.table(wiki_data_raw)
#only look at instances where some one clicked a result 
wiki_data_search <- wiki_data_search[which(wiki_data_raw$action == 'visitPage'),]
wiki_data_search$result_position <- as.factor(wiki_data_search$result_position)
wiki_data_search <- wiki_data_search[-which(is.na(wiki_data_search$result_position)),]
#look at the most common occurance 
head(sort(summary(wiki_data_search$result_position), decreasing = T))[1]
#over all peopel tend to choose teh first result
wiki_data_search_daily <- wiki_data_search
wiki_data_search_daily$timestamp <- as.integer(wiki_data_search_daily$timestamp/1000000)
wiki_data_search_daily$timestamp<- as.factor(wiki_data_search_daily$timestamp) 
setkey(wiki_data_search_daily, timestamp)
charDates <- as.character(dates)
resultQuant <- NULL
#print out most likely result since i dont have to graph it 
for (i in 1:length(charDates)) {
    
    temp <- wiki_data_search_daily[which(as.char(wiki_data_search_daily$dates) == charDates[i])]
    print(" the most likey result picked for date ", quote = F)
    print(charDates[1], quote = F)
    print(" is ", quote = F)
    print(head(sort(summary(temp$result_position), decreasing = T))[1], quote = F)
    resultQuant[i] <- head(sort(summary(temp$result_position), decreasing = T))[1]         
}

#3 What is our daily overall zero results rate ? How does it vary between the groups ?
#new data table for new manipulation, similar process of setting it up as above
wiki_data_zero <- data.table(wiki_data_raw)
#make data set where its only searches with no results 
wiki_data_zero <- wiki_data_zero[which(wiki_data_zero$n_results == 0),]
wiki_data_zero$timestamp <- as.integer(wiki_data_zero$timestamp / 1000000)
wiki_data_zero$timestamp <- as.factor(wiki_data_zero$timestamp)
##for each date fill a data table withs its number of searches with no results
for (i in 1:length(dates)) {
    daily$Azero[i] <- length(which(wiki_data_zero$group == 'a' & wiki_data_zero$timestamp == dates[i]))
    daily$Bzero[i] <- length(which(wiki_data_zero$group == 'b' & wiki_data_zero$timestamp == dates[i]))
}
#use data gatered above to generate averages 
daily$Aavgzero <- (daily$Azero) / (daily$Asearchs)
daily$Bavgzero <- (daily$Bzero) / (daily$Bsearchs)
daily$avgzero <- (daily$Azero + daily$Bzero) / (daily$Asearchs + daily$Bsearchs)
View(daily)
#graph results
zeroRate <- ggplot(data = daily, aes(x = daily$date, y = daily$avgzero))
zeroRate <- clickthrough + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
zeroRate <- clickthrough + ggtitle('Over all daily zero result rate for each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
zeroRate
zeroRateA <- ggplot(data = daily, aes(x = daily$date, y = daily$Aavgzero))
zeroRateA <- zeroRateA + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
zeroRateA <- zeroRateA + ggtitle('Daily zero result rate for group A on each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
zeroRateA
zeroRateB <- ggplot(data = daily, aes(x = daily$date, y = daily$Bavgzero))
zeroRateB <- zeroRateB + geom_bar(aes(fill = daily$date), stat = 'identity', color = 'white', alpha = 0.8)
zeroRateB <- zeroRateB + ggtitle('Daily zero result rate for group B on each date') + theme_classic() + scale_fill_brewer(palette = "PuRd")
zeroRateB

#4 Let session length be approximately the time between the first event and the last event in a session. Choose a variable from the dataset and describe its relationship to session length. Visualize the relationship.
#new data table for new manipulation, similar process of setting it up as above
wiki_data_session <- data.table(wiki_data_raw)
#order it based on time stamp so that it goes first to last
wiki_data_session_times <- wiki_data_session[order(wiki_data_session$timestamp)]
wiki_data_session_unique <- unique(wiki_data_session_times$session_id)

wiki_data_session_times[, c("first","last"):=0L]
wiki_data_session_times[wiki_data_session_times[unique(wiki_data_session_times$session_id), , mult= "first", which= TRUE], first:= 1L]
summary(wiki_data_session_times$session_id)
View(wiki_data_session_times)

test<- data.table(wiki_data_session_times, FIRST = !duplicated(wiki_data_session_times$session_id), LAST = rev(!duplicated(rev(wiki_data_session_times$session_id))))
View(test)
firsts <- test[which(test$FIRST == T),]

lasts <- test[which(test$LAST == T),]
times<- NULL
times$fullFirst<- firsts$timestamp[wiki_data_session_unique,] 
times$fullLast <- lasts$timestamp
times$total<- 
View(times)
length(unique(wiki_data_session$session_id))
head(as.character(wiki_data_session_times$timestamp))
wiki_data_session_times$session_id <- as.numeric(wiki_data_session_times$session_id)
small_sessions <- unique(wiki_data_session_times$session_id)[1:1000]
for (i in 1:length(small_sessions)) {
    wiki_data_session_times_small$start<-smal
}


wiki_data_session_times <- wiki_data_session[order(wiki_data_session$session_id)]

head(wiki_data_session_times[which(wiki_data_session_times)])
sort()
he<- head(wiki_data_session_times$session_id)
he[1]
str(wiki_data_session)
length(which(wiki_data_session_times$session_id == he[1]))


?data.table()
#5 Summarize your findings in an executive summary.