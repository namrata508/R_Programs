library(readr)
nams1 <- read_csv("E:/R/nams1.csv")
View(nams1)


dataframe1 <- read.csv("E:/R/nams1.csv")
Namrata <- data.frame(dataframe1)
Namrata


Namrata$Qualify <- ifelse(Namrata$Score.in.test > 13, "Yes", "No")
Namrata

#sort
Namrata[order(Namrata$Name.of.student), ]
Namrata[order(Namrata$Father.name), ]
Namrata[order(Namrata$Address), ]
Namrata[order(Namrata$Score.in.test), ]
Namrata[order(Namrata$No.of.attempts), ]
Namrata[order(Namrata$Qualify), ]



ab=Namrata[-3,] #name has been removed
ab


Namrata[,!names(Namrata) %in% "Qualify"] #column Wise using number


Namrata[-2 ,] #Row has been removed










Namrata[,!names(Namrata) %in% "Qualify"] #column has been removed


nams=Namrata[c(5,10),c(1:7)]
nams


summary(Namrata)





table(Namrata$Qualify)




max(Namrata$Score.in.test)
min(Namrata$Score.in.test)


dev.off()
install.packages("ggplot2")
library(ggplot2)


barplot(nams$No.of.attempts,main = "Barplot", xlab = "Data",
ylab = "Number Of Attempts")











pie(table(Namrata$Qualify),main = "Number of Yes/No")














#Using for loop
nam=6
fact=1
for (i in 1:nam){
  fact<-i*fact
}
fact



#Using While loop
nam<- 6
fact <- 1
i <- 1

while (i <= nam) {
  fact <- i * fact
  i <- i + 1
}
print(fact)
#Using Repeat
nam <- 6
fact <- 1
i <- 1

repeat {
  fact <- i * fact
  i <- i + 1
  
  if (i > nam) {
    break
  }
}

print(fact)