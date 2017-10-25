#TAnveer bariana
#homework 5

#11111111111111111111111111111111111111111111111111111111111111111111111
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    #p(5 in 30) p(l)= .1
plefty <- choose(30, 5) * (.1 ^ 5) * (.9 ^ 25)
binom <- function(n,r, p) {
    ans<-NULL
    for (r in r:n) {
        ans[r]<- choose(n, r) * (p ^ r) * ((1-p) ^ (n-r))
    }
    return(ans)
}
#bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
pdistX<- binom(30,1,.1)
#ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
plot(pdistX, type= 'h')
#ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
