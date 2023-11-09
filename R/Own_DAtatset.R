#read into csv
x=read.csv("namu.csv")
x

library(readr)
namu <- read_csv("namu.csv")
View(namu)

#get maximum salary use max
sal=max(namu$salary)
sal

#detail of the person who is having max salary
#salary jiski highest hogi uske details ajynge.
retval=subset(namu,salary == max(salary))
retval


# replace with dept with IT
#only IT ka details dekhayega
retval=subset(namu,dept=="IT")
retval

#combining two commands
info=subset(namu, salary>600 & dept=="IT")
info



#writing into csv

#
write.csv(retval,"output1.csv", row.names = FALSE)
data=read.csv("output1.csv")
data
#reading output.csv
#Iske help se hm data ko read kr skte h
#Chahe wo R environment se outside hi q n ho

















#label -desc
#main-indicates the title

#Piechart
#create data for graph

labels=c("delhi","newyork","mumbai","chennai")
labels






# mam krwayegi avi
piepercent = round(100*x/sum(x),1) # x is a vector
piepercent

#give the chart file a name
png(file="kwj.png")

#plot the chart
pie()




pie(x,labels,radius,main,col,clockwise)
