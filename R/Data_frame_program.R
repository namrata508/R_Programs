library(tidyverse)  
cap787 = data.frame(st_name=c("aa","bb","cc","dd"),
                    st_roll=c(1,2,3,4),
                    marks=c(34,65,65,87),
                    gender=c("male","female","male","female"),
                    city=c("patna","delhi","gurgaon","punjab"),
                    age=c(23,21,35,65))
#cap787=data.frame(n)
capdemo=cap787%>%
 select(st_name,gender,marks)%>%
rename(tot_marks=marks)
view(capdemo) 
cap787
view(cap787)

