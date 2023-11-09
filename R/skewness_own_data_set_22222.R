###without dataset####


##sd
#The standard deviation is a measure of the amount
#of variation or dispersion in a set of values.
# Sample data
data <- c(12, 15, 18, 20, 22)
# Calculate the standard deviation
standard_deviation <- sd(data)
# Print the result
print(standard_deviation)


###
# Calculate the natural logarithm of a number
result <- log(10)  # This calculates ln(10)
# Print the result
print(result)
#####



####
#"kurtosis" is a statistical measure that quantifies 
#the shape of a distribution's tails and the degree 
#to which it deviates from a normal distribution.


# Install and load the moments package
install.packages("moments")
library(moments)
# Sample data
data <- c(10, 12, 15, 18, 20, 25, 30, 40, 50)

# Calculate kurtosis
kurt <- kurtosis(data)

# Print the result
print(kurt)
####




###skewness
#"skewness" is a statistical measure that quantifies 
#the asymmetry of a distribution. It indicates the 
#degree to which the distribution of a dataset deviates
#from being symmetric around its mean.

# Install and load the moments package
install.packages("moments")
library(moments)

# Sample data
data <- c(10, 12, 15, 18, 20, 25, 30, 40, 50)

# Calculate skewness
skew <- skewness(data)

# Print the result
print(skew)
####


###
#hist func is used to create histogram, which are 
#graphical representation of the distribution of dataset.
hist(datset1$temperature)