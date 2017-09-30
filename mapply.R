#library(microbenchmark)
#library(ggplot2)
c1<-1:10000
c2<-10000:1
f1<-mapply(rep,c1,c2) #takes two vectors(c1,c2) and performs repetations on c1 based on c2
store <-list()
# following function performs exact same function as f1 and returns o/p as list like f1 
f2<-function(c1,c2){
  for(i in 1:length(c1)){
    vec<-rep(NA,c2[i])
    store[[i]]<-list(rep(NA,c2[i])) 
    x <- 1
    for(j in 1:c2[i]){
      vec[x]<-i
      x <- x+1
    }
    store[[i]] <- vec
    vec <- NULL
  }
  #print(store)
}
ggplot2::autoplot(microbenchmark(f1,f2,times=10L))


