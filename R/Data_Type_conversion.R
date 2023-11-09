#conversion to numeric
num1<-as.numeric(26L)
num1

num2<-as.numeric(25-56i)
num2
class(num1)

num3<-as.numeric(TRUE)
num3
class(num3)

num4<-as.numeric("adscg456")
num4

#conversion to integer
int1<-as.integer(26L)
int1
class(int2)

int2<-as.integer(25-56i)
int2
class(int2)

int3<-as.integer(TRUE)
int3
class(int3)

int4<-as.integer("adscg456")
int4

#conversion to complex
com1<-as.complex(26L)
com1
class(com1)

com2<-as.complex(25-56i)
com2
class(com2)

com3<-as.complex(TRUE)
com3
class(com3)

com4<-as.complex("adscg456")
com4
class(com4)


#conversion to character
char1<-as.character(26L)
char1
class(char1)

char2<-as.character(25-56i)
char2
class(char2)

char3<-as.character(TRUE)
char3
class(char3)

char4<-as.character("adscg456")
char4
class(char4)



#conversion to logical
#0 hoga to false hoga baki sare case mai true hoga
log1<-as.logical(26L)
log1
class(log1)

log2<-as.logical(25-56i)
log2
class(log2)

log3<-as.logical(TRUE)
log3
class(log3)

log4<-as.logical("adscg456")
log4
class(log4)




##converting numbers and characters
x=20
is.numeric(x)
class(x)


y=as.character(x)
is.numeric(y)
class(y)

is.character(y)


#converting character into a numbers
y="namu"
is.numeric(y)

is.character(y)

x=as.numeric(y)

is.numeric(x)


