#9/20/17

party <- c('r', 'd', 'd', 'r', 'd', 'o', 'd', 'r', 'r')
class(party)
party <- factor(party, levels = c('r', 'd', 'o'), labels = c("rep", "demo", "other"))
class(party)
str(party)
table(party)

?factor