#dou
exe <- read.csv('datset1.csv')
df <- data.frame(exe)
df

library(readr)
datset1 <- read_csv("E:/R/datset1.csv")
View(datset1)

str(datset1) #check the attribute type # what are the data types of 
dim(datset1) # how many entity is there 
nrow(datset1)*ncol(datset1)


table =data.frame(datset1 $outcome,datset1 $surgery)## grouping the same value in dataset
table
View(table)
d3<-data.frame(datset1$ID,datset1$sex)
d3
#to get a bar chart of age  barplot
barplot(table(datset1$outcome))#table is summarizing the data how many entry of this

# if your graph is not running then do these steps((
#dev.off()
#install.packages("ggplot2")
#library(ggplot2)
#))

#bar chart
barplot(table(datset1$surgery),main = "Kind of Suergery",ylab = "FIG",xlab = "name of")
# showing the heading of x axis and y axis

#pie chart
pie(table(datset1$outcome), main="Kind of Suergery",labels = c(5,7,8,9))

#basic statical data set
#summary (mean median)
summary(datset1)   #mean,median

#save the graph (export)

datset1[c(2,3,4)] # to select few col
datset1[c(1:3,7)]  # to select few row


dataset11=datset1[c(2,4,6),c(2,4)]  #rows ad col
dataset11






d2<-subset(datset1,subset = c("ID","surgery","heart.rate"))
