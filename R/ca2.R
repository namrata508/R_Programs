library(readr)
Airlines <- read_csv("E:/R/Airlines.csv")
View(Airlines)

nams<-Airlines
nams

library(stats)
mean(Airlines$Flight)


median(Airlines$Length)
summary(Airlines)









sd(Airlines$Flight)

dim(Airlines)





str(Airlines)

storage.mode(Airlines$Flight)



library(moments)
data1=skewness(Airlines$Flight)
data1
data=sd(Airlines$Flight)
data

data4=kurtosis(Airlines$Flight)
data4


#data cleaning
#format the missing value
Airlines[Airlines ==""]<-NA
Airlines

#NA jaha h usko string banadega 
Airlines[Airlines=="NA"]<-NA

#removing empty rows 
data<-Airlines[rowSums(is.na(Airlines))!=ncol(Airlines),]
data

#removing empty cols
data<-Airlines[,colSums(is.na(Airlines))!=nrow(Airlines)]
data

#removing rows which are having missing value
data<-na.omit(Airlines)
data


#data wrangling
#groupby
#select
#Filter
#Mutate
#Arrange

library(tidyverse)
#groupby
temp1=Airlines %>%
  summarize(temp = mean(Flight),
            sd = sd(Flight),
            q = quantile(Flight, 0.67),
            q2 = quantile(Flight, 0.40)) %>%
  round(1)

#filter
temp2=Airlines%>% filter(Length<=200)%>%filter(Delay==1)

#select
temp3=Airlines%>%select(Flight,AirportTo,Time,Length)


#MUTATE
temp4=Airlines%>%mutate(Time=ifelse((Time>=90 & Time<=200),yes="Approved" ,
                                    no="Not approved"))

#Arrange
temp5 = Airlines %>%
  arrange(Length)



#DATA VISUALIZATION

# Creating a barplot
barplot(table(temp2$Delay), 
        main="Delay Count",
        xlab="Delay", 
        ylab="Count",
        col="lightblue")


# Creating a histogram
hist(temp3$Length, 
     main="Histogram of Length",
     xlab="Length",
     ylab="Frequency",
     col="pink")



library(ggplot2)

# Creating a ggplot
ggplot(temp3, aes(x=Length)) +
  geom_histogram(binwidth=10, fill="skyblue", color="black") +
  labs(title="Histogram of Length",
       x="Length",
       y="Frequency")




# Create a boxplot for 'Flight'
boxplot(temp3$Flight,
        main="Boxplot of Flight",
        ylab="Flight",
        xlab="Boxplot",
        col="lightgreen")


# Create a pie chart
pie_chart_data <- table(Airlines$Delay)
pie_chart <- pie(pie_chart_data, labels = names(pie_chart_data), 
                 main = "Pie Chart of AirportTo")


# Creating a scatter plot
library(ggplot2)
plot(temp3$Flight, temp3$Length,
     main="Scatter Plot of Flight vs. Length",
     xlab="Flight",
     ylab="Length",
     col="skyblue",
     pch=16)
