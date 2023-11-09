library(readr)
datset1 <- read_csv("E:/R/datset1.csv")
View(datset1)

#install moments
library(moments)

#distribution of the data skewness
#statical funct
x=c(34,23,45,65,66)
skewness(x)

#dataset apply skewness
data1=skewness(datset1$temperature)
data1

#standard deviation
data=sd(datset1$bilirubin)
data


# Calculate the natural logarithm of a number
#not wrking
log(Gsd(datset1$bilirubin))
#working
data3=log(datset1$bilirubin)
data3

data4=kurtosis(datset1$temperature)
data4

data5=hist(datset1$temperature)
data5