#list
list1<-list(c(5,6,7),21,3,min(90,20,12,56))
print(list1)

#array
#3/3 with two elements 
a=array(c('aaru','anki','nams'),dim=c(4,4,3))
a

#create a matrix 3/3 with 5 array elements
x=matrix(nrow=3,ncol=3, data = array(c('aaru','anki','nams','namu','akku'),dim=c(3,3,5)))
x

#factor

aa=c("yellow","yellow","green","orange","pink")
factor_app=factor(aa)
print(factor_app)``
print(nlevels(factor_app))


#using cat 
var.1=c(0,1,2,3)
var.2=c("nam","anku")
c(FALSE,1)->var.3
print(var.1)
cat("var.1 is ",var.1,"\n")
cat("var.2 is ",var.2,"\n")
cat("var.3 is ",var.3,"\n")


#2nd method using cat
var_x=27L
cat("minimum of two numbers is ", min(1,2))


# how many variable are there and searcg with particular variable name also
ls()
print(ls(pattern="var"))