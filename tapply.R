#library(microbenchmark)
#library(ggplot2)
vec <- 1:10000
fac <- factor(c(sample(1:10,10000,replace=T))) # generates random numbers between 1-10 times=10000
f1 <- tapply(vec, fac, sum) # returns sum of elements in vec to corresponding levels in fac
res <- c()
# performs the same function as f1
f2<- function(fac,vec){
        for(n in strtoi(levels(fac))){ 
              sum1<-c(0)
                  for(j in vec){
                        if(fac[j] == n)
                                 sum1 <- sum(sum1,vec[j])
                  }
                  res[n] <- c(sum1)
        }
  #print(res)
}
ggplot2::autoplot(microbenchmark(f1,f2,times=15L))  




