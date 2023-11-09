
library(help=spatial)
install.packages("cluster")
update.packages("cluster")
remove.packages("cluster")
#not working
detach("package:tidyverse", unload=TRUE)
installed.packages()
ls()
getwd()

# Get the current working directory
current_dir <- getwd()
# Print the current working directory
print(current_dir)

# Set the working directory to a specific path
setwd("E:/R")


#dont know whether the output is right or wrong
setwd("E:/R")

x=1:100
x

rm(x)
x

q() 
