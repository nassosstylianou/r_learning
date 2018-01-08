#looking at your data
# View the first 6 rows of data
head(data)
# View the last 6 rows of data
tail(data)
# View as many rows of data as you want
head(data, n=10)
# View a condensed summary of the data
str(data)
# Check the class of data
class(data)
# Check the dimensions of data
dim(data)
# View the column names of data
names(data)
# Check the structure of the data, the dplyr way
glimpse(bmi)
# View a summary of data
summary(bmi)

#view a table of a column
table(data$columnname)

# Histogram of a column in the data
hist(data$column_name)
# Scatter plot comparing two columns in the data
plot(data$column1_name, data$column2_name)

