#PLOTS IN R 
plot(c(23,24,36,47,58),c(18,48,69,31,95)) # it gives y =x^2
plot


help(plot)


x=seq(-pi,pi,0.1) #it is creating a seq range horha create -pi se + pi tak 0.1
y=sin(x)
#plot(x,y)


#shape of the markers:
#plot(x,y,pch=c(4,5),col=c("red","blue","violet","green"))#pch->which type of plot will be there in the plot
plot(x,y,pch=c(5,6,7,8,9),col=c("red","blue","violet","green"))#pch->which type of plot will be there in the plot

#size of the plot markers

par(mfrow=c(1,2))  #parameter set krne keliye h
plot(x,y,type='l')

par(mfrow=c(1,2))
plot(x,cos(x),col=c('blue','orange'),type='o',pch=19,lwd=2,cex=1.5)#cex for size of the plot marker


plot(c(1,3,9,7,5,11),c(2,7,5,10,8,10),type='o',lty=3,col='pink',lwd=4)#lty-line type ,lwd-line width

plot(x,log(x),col='orange',type='s')   #o,h,s -



#multiple plot in r
#displaying the title with color
#not running
plot(c(1,3,5,7,9,11),c(2,7,5,10,8,10),type='o',lty=3, col=='blue',lwd=4,main="This is a graph",col.main='pink')

#title for the axis by using text attribute
plot(c(1,3,5,7,9,11),c(2,7,5,10,8,10),type='o',lt=3, col=='blue',lwd=4,main="This is a graph",col.main='pink',xlab="xaxis",ylab="yaxis")



#label
labelset<-c("one","two","three","four","five","six","seven") #lty-line type
x1=c(1,3,5,7,9,1)
y1=c(2,7,5,10,8,10,)
plot(x1,y1,type='o',lty=3,col)


#legends graph with data label(after draqw plot then add)
legend('topleft',insert=0.05,"Performance",lty=3,col)


#overlaying 
x=seq(2,10,0.1)
y1=x^2
y2=x^3
plot(x,y1,type='l',col='red')
lines(x,y2,col='red')
legend('bottomright',inset=0.05,c("Squares","Cubes"),lty=1,col=c("red","green"),title="Graph type")#inset -the value which are comming insie 

#adding lines to the plot 
abline(a=4,b=5,col='blue')
abline(h=c(10,26,28),col="dark green",lty=2)  # for horizontal line
abline(v=c(6,9,10),col="dark green",lty=2) # for vertical line


#graph between age and height






