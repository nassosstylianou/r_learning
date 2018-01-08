#Missing data - how to deal with them depends on why they are missed. 
#Missing data in R represented with NAs but may appear in other forms, like #N/A from Excel for example, or simply empty strings

#Finding missing values: Running is.na on your dataframe will return you a dataframe with TRUE or FALSE where NAs are present in your dataframe
is.na(dataframe)

#To find if there are any NAs in the data, you can surround is.na function with any(), for example
any(is.na(dataframe))
#To find out how many NAs in the data
sum(is.na(dataframe))

#The summary function run on your data also tells you how many NAs there are in each variable
summary(dataframe)

#To automatically remove rows with missing values, you can run na.omit on your data
na.omit(dataframe)

#To identify which rows have missing values, which() finds the indices of these rows
indices <- which(is.na(data))
#You can then look at the rows themselves
data[indices, ]

#To identify a specific cell, you can use the indices on a specific column and change the cell value directly
data$columnname[indices]

