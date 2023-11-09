# 1
x=matrix(61:76,nrow=4,ncol=4,byrow=F)
x
colSums(x)
#2
rowSums(x)
#3
rowMeans(x)
#4
colMeans(x)

#5
x=diag(6, nrow=3, ncol=3)
x

#6
x2=matrix(nrow=4, ncol=2, data=41:48, byrow=T)
x2
t(x2)

#7
x=matrix(10:18,3,3)
y=matrix(1:9,3,3)
x
y
print(x%*%y)

#8
x=matrix(c(4,1,4,8,6,2,7,4,9),3,3)
y=matrix(c(7,4,9,4,2,4,7,6,2),3,3)
x
y
t(x)*t(y)

#9
x=matrix(nrow=2, ncol=4, data=41:48, byrow=T)
x
4*x

#10
x=matrix(c(4,8,7,1,6,4,4,2,9),3,3)
y=matrix(c(7,4,7,4,2,6,9,4,2),3,3)
x
y
x+y

#11
x=matrix(nrow=4, ncol=4, data=26:41, byrow=F)
print(12-3%*%x)

#12
x=matrix(nrow=4, ncol=4, data=26:41, byrow=F)
x[3 ,]

#13look movie
x=matrix(nrow=4, ncol=4, data=26:41, byrow=F)
x[1:2,3:3]
x

#14
# dekhna hoga
x=matrix(nrow=4, ncol=3, data=c(10,20,30,40,50,60,70,80,90,100,110,120))
x
x[2:1,3:2]

#15 & 16
x=matrix(nrow=2, ncol=3, data=40:45, byrow=T)
y=matrix(nrow=2, ncol=3, data=60:65, byrow=T)
x
y
cbind(x,y)
rbind(x,y)

#17
#dought
x=matrix(c(13,4,5,16,1,20,3,8,12,14,16,12,5,6,7,8),4,4)
x
x=solve(x[1:3,2:4])
x

#18
#not getting the correct
  x=(x<25 || (x>22) & (x<25) && (x>22)||(x==27))
  x
  x=-23
  x

#19
#not getting 
x=23:26
(x>23) & (x<25)
x

#20
x=13:28
x[(x>22)&(x<27)] 
x[(x>25)|(x<15)]
x


#21
x=20:60
x[(x>30)&(x<50)]

#22
x=55
(x>30)&(x<50)
(x>60)|(x<70)
x

#23
x=23:27
-x[(x>22)|(x<25)]

#24
x=c(15,25,35,45,55)
y=c(45,55,65,75,85)

#25
x!=y

#26
x==y

















# row cols delete
x=matrix(nrow=3, ncol=3, data=c(1,4,7,2,5,8,3,6,9),byrow=T)
x
x[-2,]
x[,-2]


#
id =c(10,20,30,40)
name=c("a","b","c","d")
gender=c("male","female","male","female")
age=c(23,21,35,65)
df=data.frame(id,name,gender,age)
df

#one particular column dekhna h to (arbitary ka use krte h $)
nam=data.frame(df$id,df$gender,df$age)
nam

#Create DataFrame with 1,3 and 4 columns
nam=df[,c(1,2,4)]
nam

#Create DataFrame with selecting range of columns
nam=df[,c(1:3,4)]
nam

#Create DataFrame with id,gender,name columns
nam=df[,c('id','gender','name')]
nam


#Create DataFrame with 1,3 and 4 rows
df2 <- df[c(1,3,4),]

#Create DataFrame with 1,3,4 rows and columns 2 and 4
df2 <- df[c(1,3,4),c(2,4)]

# By using subset with column names
df2 <- subset(df, select=c("id", "gender", "dob"))

#By using subset with indices
df2 <- subset(df, select=c(2:3, 5))







#using sub set function in data frame
na=subset(df, select=c("id","gender"))
na