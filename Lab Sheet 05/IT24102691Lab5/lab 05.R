setwd("C:\\Users\\it24102691\\Desktop\\IT24102691Lab5")

##import dataset
delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)

##view in separate window
fix(delivery_times)

##Attach file
attach(delivery_times)

##Rename column name
names(delivery_times)<-("minutes")

##Attach again to rename variable
attach(delivery_times)

##Histogram
histogram<-hist(minutes,main="Histogram for Delivery Times in minutes",breaks=seq(20,70,length=9),right=FALSE)

##class limits of the frequncies of the histogram
breaks<-round(histogram$breaks)


##Assign class frequencies of the histogram
freq<-histogram$mids

##cumulative frequencies
cum.freq<-cumsum(freq)

##creating a null variable
new<-c()

##store cumulative frequencies in order to get the ogive
for (i in 1:length(breaks)){
  if (i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]}
  
  
}

#Draw cumulative frequency polygon
plot(breaks,new,type='l',main="cumulative Frequwncy polygon for Delivery times",xlab="Minutes",ylab="cumulative Frequency",ylim=c(0,max(cum.freq)))
