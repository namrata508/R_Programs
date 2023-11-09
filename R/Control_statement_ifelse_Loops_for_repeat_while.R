# own practice

#Control_statement_ifelse_Loops_for_repeat_while
#if-else eg:
x=25
if(is.integer(x))
{
  print("x is an integer no")
}else
{
  print("x is not an integer no")
}

#another example of if-else
y=c("kuttu","and","nams","are","best","friends")
y

#yeh operator compare or searching keliye krte h use
#%in%
if("anki" %in% y)# kuttu jo h hmare eska comparision hoga y kesath
{
  print("kuttu is found")
}else{
  print("kuttu is not found")
}

#else if
marks=67
if(marks>75)
{
  print("1st class")
}else if(marks>65){
  print("2nd class")
}else if(marks>45){
  print("3rd class")
}else{
  print("fail")
}

#switch_case
#multiple condition to switch case perform krskte h
#Syntax----switch(expression,case1,case2....)
#Two types:
#1.based on the index value
x=switch(2, #index hai 2
  "Namu",
  "Ankii",
  "Aaru",
  "kuttu"
)
print(x)

#2.based on the matching value
y="14"
x=switch(y, 
         "4"="Namu",
         "14"="Ankii",
         "34"="Aaru",
         "20"="kuttu"
)
print(x)


#break and next
#next
#next is used to skip the any remaining statement in loop or continue in the execution
#simple we can say avi jo execution chl rha h next current execution ko skip krdege but loop ko terminate ni krega condition false ni hogi tbtk chlta rhega
x=1:10
for(val in x){#variable specify and vector name 
if(val==5){  #5 jese aayega wo skip hoga
  next
}
  print(val)
}

#BREAK
#break-> yeh bahar aajyega loop se execution pura hi rok dega
a=1
repeat{
  print("Hello Kuttu")
  if(a>=5)
    break
  a=a+1
}


#FOR LOOP- multiple statement ko print krwana ho
#syntax:-for(variable in vector)
#eg:1
for(y in 1:10){
  print(paste("number: ", y)) #string concatination keliye paste ka use krte h
}

#eg: 2
for(hgy in 1:6)
{
  print(hgy)
  cat("hey its my no, hgy")
}

#eg:3
namu=c("nu","tu","su")
for(i in namu){
  print(namu)
}

#REPEAT LOOP- condition specify ni krte hai exit krne keliye loop ko break use krte h loop ko exit krne keliye
namu=c("I","Love","You")
x=2
repeat{
  print(namu)
 x=x+1
  if(x>5){
    break
  }
}

#WHILE LOOP-initialization phele
v<-c("hey","Kuttu","Kese","Ho")
w<-2
while(w<6){
  print(v) 
  w<-w+1
}




















# mam ka h


a=c(
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thrushday',
  'Friday',
  'Saturday'
)

for(day in a)
{
  print(a)
  cat("hftjyhgm hfhtr, av")
}


#for loop with list



#for loop with using matrix
a=matrix(1:9,nrow=3)



#ques
matches <- list(c(0,1),c(5,2),c(6,3))
for (match in matches){
  if(match[1] > match[2]){
    print("win")
  }else{
    print("Lose")
  }
}

#for loop with Dataframe
ab = data.frame(
  Name= c("aa","bb","cc","dd","ee"),
  Age= c(23,12,34,65,56),
  Gender= c("Female","Male","Female","Male","Female")
)

for(i in seq_along(ab))
{
  print(ab[i])
 print(ab) 
}
# while loop
v=1
while(v<=8){
  print(v)
  v=v+1
}

#repeat loop
repeat{
  print(val)
  val = val + 1
  if (val > 7)
  {
    break
  }
  
}


# test expression 
repeat {
  
  print(result)
  
  # update expression 
  i <- i + 1
  
  # Breaking condition
  if(i >5) {
    break
  }
}

