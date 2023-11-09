#data wrangling technique
# combine few comands   
library(readr)
num<- read_csv("datset1.csv")
View(num)

#select filter mutate arrange groupby

library(tidyverse) #embed the function 

num %>%
  summarize(num = mean(temperature))  # summarize the func which is used in tidyverse

median(age)
num %>%
  group_by(surgery) %>%
  
  summarize(num=mean(temperature),
            num=sd(temperature),
            num=quantile(temperature,0.95),
            num=quantile(temperature,0.25) %>%
              round(1))
#filter data by age
nam<-num%>%
  filter(age>50&age<70)
mean(nam$age)

#graph banana h kisski surgery jyda hue h
barplot(table(nam$surgery))

max(nam$surgery)
min(nam$surgery)

#how many people die with liver failure
#people die in icu what was the age group
