library(datasets)  
data(mtcars)
View(mtcars)

View(iris)
View(Titanic)


head(mtcars)
tail(mtcars)

#one dimensional
summary(mtcars)

#boxplotting  #one dimension
boxplot(mtcars$mpg, col="blue")


#histogram
hist(mtcars$mpg, col="pink")  #plot1
hist(mtcars$mpg, col="pink", breaks=25) #alters the width of histogram bars #plot2
hist(mtcars$mpg, col="pink", breaks=50) #plot3


#barplot
table(mtcars$carb)
barplot(table(mtcars$carb), col="pink")   #

#two dimensional plotting
boxplot(mpg~gear, data=mtcars, col="pink") 


#histograms
hist(subset(mtcars, cyl==4)$mpg, col="pink")
hist(subset(mtcars, cyl==8)$mpg, col="pink")


#scatter plot
with(mtcars, plot(mpg,qsec)) 
