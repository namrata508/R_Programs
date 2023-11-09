#data cleaning - remove duplicacy
#untidy data

#data cleaning creation

data <-data.frame(
  x1=c(1:4,99999,1,NA,1,1,NA),
  x1=c(1:5,1,"NA",1,1,"NA"),
  x1=c(letters[c(1:3)],"x x","x","y   y y","x","a","a",NA),
  x4="",
  x5=NA)
data


#save data in excel file
write.csv(data,"E:\\R\\anki.csv")



#rename the cols:
colnames(data)<-paste0("AA",1:ncol(data))  #paste0() function is used to concatenate character strings together without any separator between them.
#colnames(data)<-paste0("AA",1:6)

#rename the row:
rownames(data)<-paste0("BB",1:nrow(data))

#format the missing value -- replace krta h blank space with NA  --NA is taken as blank value
data[data ==""]<-NA
data

#NA jaha h usko string banadega (sbko string nhi banarha dought)
data[data =="NA"]<-NA

nulls<-data[rowSums(is.na(data))==ncol(data),]
nulls

#removing empty rows and empty cols (10 row remove hojyega) (jo pura hi khali h koi value ni h wo sb del hojyga)
data<-data[rowSums(is.na(data))!=ncol(data),] #is.na :agr wo not available hoga to true otherwise hoga to false.
data

#x = is.na(data)
#x
#y = ncol(data)
#y

#col 4and 5 will be removed
data<-data[,colSums(is.na(data))!=nrow(data)]
data


#all rows which are having NA will be removed (esme kissime v col m NA h pure row ko hatayega ) )
#removing rows which are having missing values row 7
data<-na.omit(data)
data

#exactly same data in rows 1,8,9 will be removed


#modified the classes of col
sapply(data, class) #numeric character and character


#change the type which it should be
data<-type.convert(data,as.is=TRUE)
data

#identify and remove the outliers

#detecting and removing outliers


#dou
data=data[! data$AA1  %in% boxplot.stats(data$AA1)$out, ]
data
  

boxplot(disp ~ gear, data = data$AA1,
        main = "Displacement by Gear",
        xlab = "Gear",
        ylab = "Displacement")




dim(data)
class(data$x1)
str(data)
storage.mode(data)
                 
                 
                 
#how to check class of data

# how to check which col has which type
str(data)
#how to check the storage data type
storage.mode(data)




