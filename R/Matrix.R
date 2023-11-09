x=matrix(nrow=2,ncol=4, data=c(1,2,3,4,5,6,7,8))
x


x1=matrix(nrow=4,ncol=8, data=c(1,2,3,4,5,6,7,8),byrow=FALSE)
x1

x2=dim(x1)
x2
nrow(x1)
ncol(x1)
mode(x1)

attributes(x1)
help("list")
as.matrix(x1)
is.matrix(x1)


is.matrix(as.matrix(1:10))

y=as.matrix(1:20)
y
class(y)


x=matrix(nrow=2,ncol=2, data=c(5,6,7,8))
x

y=matrix(nrow=2,ncol=2, data=c(5,6,7,8))
y

z=x+y
z
