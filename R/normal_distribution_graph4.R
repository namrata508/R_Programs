#normal distribution-social sciences analysis all related to arts eg history,geo,
#normal distribution using histogram
install.packages("rcompanion")
library(rcompanion)



#adding some more parameters to the normal dist.( outputs to the graph)
x= c(rnorm(10000, 2000, 45))
# draw plot using plotNormalHistogram() function
# use colour and size arguments for formatting plot
plotNormalHistogram( x, prob = FALSE, col="black", border="green",
                     main = "Normal Distribution overlay on Histogram",
                     length = 10000, linecol="red", lwd=3 )


