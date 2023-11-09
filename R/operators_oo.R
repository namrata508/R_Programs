v=c(2,5,5,6,9)
t=c(8,2,5,14,9)
print(v<=t)


v=c(2,5,5,6,9)
t=c(8,2,5,14,9)
print(v>=t)




v1=32
v2=40
v3=c(10,20,30,40)
print(v1%in%v3)
print(v2%in%v3)

#transpose
m=matrix(c(2,6,5,3,4),nrow=2,ncol=3,byrow = TRUE)
t=m%*%t(m)
t