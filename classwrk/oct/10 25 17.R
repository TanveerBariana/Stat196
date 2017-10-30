#10/25/17
#deviance hmwrk 6.2.e
#deviance Di = -2sum(n[k]log(p[k])), for k = all classes, i= leaf
#ex: Node 14) calc deviance, n[k] = num of observ in kth class
#p[k] = n[k]/n[i] = obs in leaf
#number of observe(n[2]log(p[2])+n[3]log(p[3]))
-2 * (log(1 / 6) + 5 * log(5 / 6))

#for node 6 on teh tree
ni <- 54
n2 <-(.90741*ni)
n3 <- ni - n2
diverg <- -2 * (n2 * log(.90741) + n3 * log(1 - 0.90741))

