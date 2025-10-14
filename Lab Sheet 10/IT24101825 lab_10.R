setwd("C:/Users/NAWEEN/OneDrive/Desktop/PS LABS")

getwd()

#i
observed_counts <- c(120, 95, 85, 100)

#ii
probabilities <- c(0.25, 0.25, 0.25, 0.25)

#iii
chisq.test(x = observed_counts, p = probabilities)