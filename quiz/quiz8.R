#tanveer bariana 
#quiz 8
install.packages('RSQLite')
library(RSQLite)
#1--------------------------------------
 connection1= dbConnect(drv = SQLite(), ':memory:')
#2----------------------------------------
 dbWriteTable(con= connection1, name= 'hi_ther3', value = iris)
#3-------------------------------------------------
 dbGetQuery(connection1, 'SELECT * FROM hi_ther3')
#4--------------------------------------------------
 dbGetQuery(connection1, 'SELECT species FROM hi_ther3')
#5--------------------------------------------------------------
 dbGetQuery(connection1,"SELECT * FROM hi_ther3 WHERE species = 'setosa'")
#6--------------------------------------------------------------
dbGetQuery(connection1, 'SELECT AVG([Petal.Length]) FROM hi_ther3 GROUP BY species')
 
            
