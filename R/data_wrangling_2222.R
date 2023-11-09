#data wrangling technique - 
#data cleasing- to remove null value to remove 
#removing the outliers


# data wrnagling-  rearranging acconding to our mean , grouping,selecting few col, 
library(readr)
temp <- read_csv("E:/R/rapidcity.csv")
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

x = temp %>% group_by(Month)
View(x)


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
ff= temp%>% filter(Year==2009)%>%filter(Month==4)%>%filter(Temp > mean(temp$Temp))

View(temp1)
View(ff)

#select
temp%>%select(Month,Day,Temp) #%>% :- The pipe operator takes the output of one function and passes it as the first argument to the next function. 


#it is used to give particular output to mutate
temp1 = temp%>%mutate(EvenOrODD = ifelse((Month%%2)==0,yes="even",no="odd"))
                 
temp2=temp%>%mutate(WinterOrSummer=ifelse((Month>=10 & Month<=12) | (Month>=1 & Month <=3),yes="Winter" , no="summer"))

temp3=temp%>%mutate(WinterOrSummer=ifelse((Month>=4 & Month<=9),yes="summer" , no="winter"))
View(temp3)

temp=temp %>%
  mutate(summer = ifelse(Month == 4| Month == 1,
                         yes="summer" , no= "not summer"))
head(rapidcity)




#arrange
temp4 = temp %>%
  arrange(Temp)    #temp ko chta se bdha bs arrange krdiya(sort)

View(temp4)

