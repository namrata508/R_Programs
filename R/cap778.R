library(readr)
ca <- read_csv("E:/R/ca.csv")
View(ca)

exe <- read.csv("E:/R/ca.csv")
class(ca)
an <- data.frame(exe)
an


an<-read.csv("E:/R/aaa.csv")
an

###4###
an$Qualify <- ifelse(an$Score.in.test > 13, "Yes", "No")
an

###5###  5.	Sort the given data frame by multiple column(s).
an[order(an$Name), ]
an[order(an$Score.in.test), ]
an[order(an$No.of.Attempts), ]
an
an[order(an$Qualify), ]

###6### dou
###6.	Drop row(s) by number from given data frame and drop column(s) by name from given data frame.
an
an[-4,] #Row Wise using number 
an[,!names(an) %in% "Qualify"] #column Wise using number
vf 
###7###
an[c(3,5),c(1,3)]

#8
an
summary(an)
table(an$Qualify)
max(an$Score.in.test)
min(an$Score.in.test)

#9a

# if your graph is not running then do these steps((
#dev.off()
#install.packages("ggplot2")
#library(ggplot2)
#))

#9b

barplot(table(an$Attempts),main = "Barplot",ylab = "Number Of Attempts",xlab = "Student Data")


pie(table(an$Qualify),main = "Number of Yes/No")


####10###
x=matrix(nrow=3,ncol=3, data=c(5,6,7,8,2,3,1,2,7))
x

y=matrix(nrow=3,ncol=3, data=c(6,7,2,4,3,5,8,6,5))
y

print("Addintion")
x+y
a=x-y
a
a=x*y
a
a=x/y
a