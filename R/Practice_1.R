SUM<- 10+2
SUM

height=c(102,132,142,155)
height

summary1<-summary(height)
summary1

variance<-var(height)
variance

standard_deviation<-sd(height)
standard_deviation

hist(height)
hist
colour<-c("red" ,"blue" ,"yellow" ,"pink")
colour

survey1<-c(TRUE,FALSE,TRUE,FALSE)
survey1
table<-data.frame(colour,height,survey1)
table

#table[,3]

class(height)
class(colour)
class(table)

# QUESTION
name <- c("nams","nimbu","motto","motu","aaru","namu","akku","anki","suraj","Preeti")
name
section <- c(2212,2213,2214,2215,2216,2217,2218,2219,2220,2221)
section
subject <- c("eng","php","maths","java","python","data_science","web","big_data","php","analytical")
subject
marks <- c(98,88,78,98,56,87,67,98,78,87)
marks
table1<-data.frame(name,section,subject,marks)
table1
table1[2,4]

table1[,3]





# import excel file in R
datafile read.csv