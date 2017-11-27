#Tanveer Bariana
#Homework 7
#1______________________________________
library(MASS)
library(ggplot2)
datas <- birthwt
head(datas)
str(datas)
?birthwt
#a_____________________________
datas$race <- as.factor(datas$race)
datas$ftv< - factor(datas$ftv)
p1 <- ggplot(data = datas, aes(x = datas$bwt))
p2 = p1 + ggtitle("BWT based on race")
p3 = p2 + geom_density(aes(group = datas$race, fill = datas$race), color = 'white', alpha = 0.4)
p4 = p3 + theme_classic() + scale_fill_brewer(palette = "PuRd")
p4