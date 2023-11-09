#data wrangling technique
library(readr)
temp <- read_csv("E:/R/rapidcity.csv")
temp
View(temp)


#year bs show krna h to
x=(table(temp$Year))
x

#
summary(temp)
min(temp$Temp)
max(temp$Temp)
median(temp$Temp) #average








#tidyverse import into r
library(tidyverse) #embed the function 
#groupby
#select
#Filter
#Mutate
#Arrange

temp %>%
  summarize(nams = mean(Temp))

#group by sort data by month (is applied outside the command)
temp %>%
  group_by(Month) %>%
summarize(nams=mean(Temp),
          ad_Temp=sd(Temp),
          ad_Temp=quantile(Temp,0.05),
          ad_Temp=quantile(Temp,0.95) %>%
            round(1))

#round function is summarizing the result

quartile


#filter filter krta h male female
rapidcity2009=rapidcity %>%
 filter(Year==2009)
head(rapidcity2009)
tail(rapidcity2009)
  

#select
rapidcity2009 %>%
  select(Month,Day,Temp)
head
rapidcity2009

#it is used to give particular output to munate
rapidcity=rapidcity %>%
  mutate(summer = ifelse(Month == 4| Month == 1,
                         yes="summer" , no= "not summer"))
head(rapidcity)

#arrange
rapidcity %>%
  arrange(Temp) %>%
head(10)