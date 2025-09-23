setwd("C:/Users/NAWEEN/OneDrive/Desktop/PS LABS")
getwd()

data<-read.table("Data - Lab 8.txt", header =TRUE)
fix(data)
attach(data)


#Q1#
popmn<-mean(Nicotine)
popvar<-var(Nicotine)


#Q2#
samples<-c()
n<-c()

for(i in 30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

samplemean<-mean(s.means)
samplevars<-var(s.means)

popmn
samplemean

truevar=popvar/5
samplevars

##EXCERCISE 02#

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)

samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(weights,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

samplemean<-mean(s.means)
samplesd<-sd(s.means)

popmn
samplemean

truesd=popsd/sqrt(6)
samplesd

