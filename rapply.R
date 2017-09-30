#library(microbenchmark)
#library(ggplot2)
li <- list(1:1000,1001:2000,2001:3000) #takes a list of elements and squares each element
f1<- rapply(li, function(x) x^2, how = "list", classes = "integer")
f2<-function(li){
  for(i in li){
    i<-i^2
    #print(i)
  }
}
ggplot2::autoplot(microbenchmark(f1,f2,times=20L)) 

