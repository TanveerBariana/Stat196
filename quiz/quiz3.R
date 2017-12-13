#1
preamble<- "We the People of the United States, in Order to form a more perfect Union, establish Justice, insure domestic Tranquility, provide for the common defence, promote the general Welfare, and secure the Blessings of Liberty to ourselves and our Posterity, do ordain and establish this Constitution for the United States of America."
words<- strsplit(preamble, split= ' ')
words<- unlist(words)
words<- gsub('[[:punct:]]', '', words)
#2
twenty<- words[20]
#3
for(i in words){
  print(nchar(i))
} 
print("****OVER****")
#4
wLen<- NULL
for(i in 1:length(words)){
  wLen[i]<- nchar(words[i]) 
}
#5
sum(length(words))
mean(wLen)
#6
wlen <- nchar(words)
#7  
bigSev<- NULL
for(i in 1:length(words)){
  if(nchar(words[i])> 7){
    bigSev<- c(bigSev, words[i]) 
  }
}
