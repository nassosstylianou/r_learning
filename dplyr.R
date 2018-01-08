#DPLYR

#Five verbs of dpyr: select, filter, arrange, mutate and summarise

# The dplyr package contains five key data manipulation functions, also called verbs:
#   
# - select(), which returns a subset of the columns,
# - filter(), that is able to return a subset of the rows,
# - arrange(), that reorders the rows according to single or multiple variables,
# - mutate(), used to add columns from existing data,
# - summarise(), which reduces each group to a single row by calculating aggregate measures.


# select: selects (or removes) columns from a dataset
# filter: selects (or removes) rows from a dataset based on a criterion
# arrange: reorders the rows in the dataset dataset
# mutate: uses the data to build new columns of values
# summarise: calculates summary statistics in groupings
# 
# Tidy data principles - variables in the columns and observations in the rows
# 
# select and mutate manipulate variables in your dataset
# filter and arrange manipulate the observations in yor dataset
# summarise manipulates groups of observations in your dataset 

#Select:
select(data, column1name, column2name, column3name)
select(data, 2:5, 7)
select(data, column1name:column3name, column7name, column12name:column15name)

# dplyr comes with a set of helper functions that can help you select groups of variables inside a select() call:
#   
#   starts_with("X"): every name that starts with "X",
# ends_with("X"): every name that ends with "X",
# contains("X"): every name that contains "X",
# matches("X"): every name that matches "X", where "X" can be a regular expression,
# num_range("x", 1:5): the variables named x01, x02, x03, x04 and x05,
# one_of(x): every name that appears in x, which should be a character vector.


#MUTATE:
mutate(data, new_column_name = existing_column / other_existing_column)
#To create more than one variable, place a comma between each variable that you define inside mutate()


#The mutate_each functions lets you mutate a number of columns at the same time
mutate_each(data, funs(as.numeric), column1:endcolumn)


#GROUP_BY
#group_by groups the data by the values in your dataset 
group_by(data, column_to_group_by)
#You will not notice any difference to the look of your data when you group by, where group by comes into its own is when you summarise. 

#You can also combine group_by() with mutate(). When you mutate grouped data, mutate() will calculate the new variables independently for each group. This is particularly useful when mutate() uses the rank() function, that calculates within-group rankings. 