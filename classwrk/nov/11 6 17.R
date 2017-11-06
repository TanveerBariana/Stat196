#11/06/17
#today is ggplot 
library(ggplot2)
#ggplot2(data= , mapping= aes(x, y, <aesthetics>))
plots <- ggplot(data = mtcars, aes(x = mpg))
plots + geom_histogram(binwidth = 2)
plots + geom_histogram(col= "red", binwidth = 2)+theme_minimal()