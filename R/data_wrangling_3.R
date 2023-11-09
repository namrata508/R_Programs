year=c(1994,1995,1996,1994,1994,1994,1995,1994,1999,1994)
Month=c(1,2,3,1,2,3,1,2,3,1)
Day=c(12,13,10,18,12,23,15,17,14,12)
Temp=c(23.7,78.9,34.7,87.9,23.7,34.7,67.8,23.7,98.8,99.9)
data =data.frame(year,Month,Day,Temp)


#tidyverse import into r
library(tidyverse) 
#groupby
#select
#Filter
#Mutate
#Arrange

#groupby
data %>%
  group_by(Month) %>%
  summarize(data=mean(Temp),
            ad_Temp=sd(Temp),
            ad_Temp=quantile(Temp,0.05),
            ad_Temp=quantile(Temp,0.95) %>%
              round(1))

#filter
ff= data%>% filter(year==1994)%>%filter(Month==1)

#select
ff%>%select(Month,Day,Temp) 

#mutate
ff=ff %>%
  mutate(summer = ifelse(Month == 4| Month == 1,
                         yes="summer" , no= "not summer"))

#arrange
ff = ff %>%
  arrange(Day)



#data visualization
#1. barplot
barplot(data$Temp,
        main = 'Ozone Concenteration in air',
        xlab = 'ozone levels')

#histogram
hist(data$Temp, main ="temperture histogrm",
     xlab ="Temperature(Fahrenheit)",
     xlim = c(50, 125), col ="yellow",
     freq = TRUE)

#boxplot
boxplot(data$Temp, 
        main ='Box Plots for temp')

#ggplot
library(ggplot2)
plot(data$Temp, data$Month,
     main="Scatter Plot of Flight vs. Length",
     xlab="Flight",
     ylab="Length",
     col="skyblue",
     pch=16)

# Create a pie chart
pie_chart_data <- table(data$Temp)
pie_chart <- pie(pie_chart_data, labels = names(pie_chart_data), 
                 main = "Pie Chart of AirportTo")