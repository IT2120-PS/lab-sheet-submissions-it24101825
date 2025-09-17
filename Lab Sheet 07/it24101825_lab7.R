setwd("C:/Users/naween/OneDrive/Desktop/PS LABS")
getwd()


##A bus arrives at a bus stop uniformly between 7:00 a.m. and 7:30 a.m # 
#Let therandom variable X represent the number of minutes waiting for the bus between 7:00 a.m. and 7:30 a.m#
#What is the probability that the bus arrives within the first 10 minutes after 7:00 a.m#

punif(10,min = 0,max = 30,lower.tail = TRUE)

#What is the probability that the bus arrives after 7:20 a.m.?#

#p(X>20) = 1 - p(x<=20)#

1-punif(20,min = 0,max = 30,lower.tail = TRUE)

#or#

punif(20,min = 0,max = 30, lower.tail = FALSE)


#The time (in hours) required to repair a machine is an exponentially distributed
#random variable with parameter λ = 0.5#

#Find the probability that a repair time takes at most 3 hours.#

pexp(3, rate =0.5,lower.tai = TRUE)

#Find the probability that a repair time exceeds 4 hours#

1-pexp(4,rate = 0.5,lower.tail= TRUE )

#or#

pexp(4,rate=0.5,lower.tail = FALSE)

#Find the probability that a repair time takes between 2 to 4 hours#
pexp(4,rate =0.5,lower.tail=TRUE)-pexp(2,rate=0.5,lower.tail = TRUE)

#Assume that human body temperatures are normally distributed with a mean of#
#36.8C◦ and a standard deviation of 0.4C◦#

#A hospital uses 37.9C◦ as the lowest temperature considered to be a fever#
#What is the probability that randomly selected person would have a fever?#

pnorm(37.9,mean =36.8, sd=0.4, lower.tail = TRUE)

#What is the probability that a randomly selected person would have a temperature between 36.4C◦ and 36.9C◦
?#
  
pnorm(36.9,mean =36.8, sd=0.4, lower.tail = TRUE)-pnorm(36.4,mean = 36.8, sd=0.4,lower.tail = TRUE)

#Physicians want to decide the maximum temperature which is needed for further medical tests. What should be that temperature, if they want only 1.2%
#of the people to fall below it?#

qnorm(0.012,mean =36.8, sd=0.4, lower.tai = TRUE)

#Physicians want to decide the minimum temperature which is needed for further
#medical tests. What should be that temperature, if they want only 1.0% of the
#people to fall above it?#

qnorm(0.01,mean = 36.8, sd=0.4, lower.tail = FALSE)

#EXCERCISE#

#A train arrives at a station uniformly between 8:00 a.m. and 8:40 a.m. Let the
#random variable X represent the number of minutes the train arrives after 8:00
#a.m. What is the probability that the train arrives between 8:10 a.m. and 8:25
#a.m.?#

1 - punif(10, min=0, max=40, lower.tail=TRUE) - punif(25, min=0, max=40, lower.tail=FALSE)

#The time (in hours) to complete a software update is exponentially distributed
#with rate λ = 0.33333.Find the probability that an update will take at most 2 hours#

pexp(2, rate=0.3333333, lower.tail=TRUE)

#Suppose IQ scores are normally distributed with a mean of 100 and a standard
#deviation of 15#

#What is the probability that a randomly selected person has an IQ
#above 130?#

pnorm(130, mean=100, sd=15, lower.tail=FALSE)

#What IQ score represents the 95th percentile?#

qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)



