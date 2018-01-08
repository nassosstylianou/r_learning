#to separate a column, you can use tidyr function separate (and if you need to specify separator)
separate(data, column, c("new_column1_name", "new_column2_name"), sep = "/")

#to join two columns into one, use tidyr function unite
unite(data, new_column_name, old_column1, old_column2, sep = "-")

#To join columns you can use cbind
cbind(data1, data2)