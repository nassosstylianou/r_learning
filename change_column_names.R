#To change column names:
#Make a new vector with the new names you want to give your columns, say calling it new_colnames
new_colnames < c(name1, name2, name3)

names(data) <- new_colnames

#or use colnames function

colnames(data) <- new_colnames

#To rename multiple columns:
#https://stackoverflow.com/questions/20987295/rename-multiple-columns-by-names

library(data.table)
d <- data.frame(a=1:2,b=2:3,d=4:5)
setnames(d, old = c('a','d'), new = c('anew','dnew'))
d

#You can also rename a subset of the columnnames (example for df named x):
names(x)[2:3] <- c("E","F")

#With dplyr you would do:
  
df <- data.frame(q = 1, w = 2, e = 3)
df <- df %>% rename(A = q, B = e)
df