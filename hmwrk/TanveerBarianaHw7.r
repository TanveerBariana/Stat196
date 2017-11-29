#Tanveer Bariana
#Homework 7
#1_____________________________________________________________
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
#b______________________________
p11 <- ggplot(data = datas, aes(x = datas$lwt, y = datas$bwt))
p11 + facet_grid(. ~ smoke) + geom_point()

#2______________________________________________________
tres<- Sitka
str(tres)
tim<- tres[tres$tree==1,]
#a______________________________
tre1 <- tres[tres$tree == 1,]
p21<- ggplot(data =  tre1, aes(x =  tre1$Time, y =  tre1$size)) + geom_point()
p21
#b_______________________________
p22 <- ggplot(data = tres, aes(x = tres$Time, y = tres$size, color = tres$treat)) + geom_line(aes(group= tres$tree))
p22
#c_______________________________
#based on teh last graph ther eseems to be no difference in teh growth pattern between the two conditions 