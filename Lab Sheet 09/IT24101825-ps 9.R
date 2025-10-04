setwd("C:/Users/NAWEEN/OneDrive/Desktop/PS LABS")

#Performs a one-sample t-test on vector x (created using c()) to check if its 
#mean differs from the hypothesized value mu = 3; key terms: t.test(), mu, one-sample t-test, p-value, t-statistic.#
x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x,mu = 3 )

#Performs a one-sample t-test on vector weight (created using c()) to test if the sample mean is significantly less than the hypothesized mean mu = 25; key terms: t.test(), mu, alternative = "less",
#one-tailed t-test, p-value, t-statistic.#
weight<-c( 17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(weight , mu=25 , alternative= "less")

#Stores the result of a one-sample t-test (testing if the mean of weight is less than 25) in the variable res; key terms: t.test(), assignment <-, mu, alternative="less", 
#one-tailed t-test, test result object.#
res<- t.test(weight , mu=25 , alternative="less")

#Extracts the t-statistic value from the t-test result object res; 
#key terms: $ (list extraction), statistic, t-statistic, t-test result object.#
res$statistic

#Extracts the p-value from the t-test result objec#
res$p.value

#Extracts the confidence interval of the population mean from the t-test result object#
res$conf.int

#Generates a numeric vector y of 30 random values from a normal distribution 
#with mean 9.8 and standard deviation 0.05; key terms#
y<- rnorm(30,mean = 9.8, sd = 0.05)

#Performs a one-sample t-test on vector y to test if its mean is significantly greater 
#than the hypothesized value mu = 10#
t.test(y , mu=10 , alternative="greater")

#EXCERCISE#
baking_time <- rnorm(25, mean = 45, sd = 2)

res <- t.test(baking_time, mu = 46, alternative = "less")

res$statistic   
res$p.value     
res$conf.int    