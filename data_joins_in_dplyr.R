#Joins in R

#Dplyr joins:
* Mutating joins, which add new variables to one table from matching rows in another.

* Filtering joins, which filter observations from one table based on whether or not they match an observation in the other table.

1 .Mutating joins

left_join() is the basic join function in dplyr. You can use it whenever you want to augment a data frame with information from another data frame.

For example, left_join(x, y) joins y to x. The second dataset you specify is joined to the first dataset. Keep that in mind as you go through the course.
Example (to join a dataset to another that has 2 shared columns:
left_join(dataset1, dataset2, by = c("column1", "column2"))

An inner join joins data in the same way but retains just the rows with a key common to both datasets.

A full join retains all values from both datasets, adding NAs in the columns where rows exist in just one dataset


2. Filtering joins

semi_join(): does not add any new columns to the dataset, just filters the first dataset with the rows also found in the second dataset. 
You can use it to quickly check which rows in one dataset have a match in another dataset even before you do a mutating join. 

anti_join(): does the opposite to semi_join, just filters the dataset to show just the rows that do not actually match with your second dataset based on a key. 

Setting key columns - defining the keys:
If your key column does not have the same name, you can specify the names of the columns you want to act as key columns in each dataset. 

left_join(dataset1, dataset2, by = c("column_name_dataset1" = "column_name_dataset2"))

Setting new names for columns joined. 

You can do this by adding a different suffix, to override the default x and y suffix R adds to the join columns with the same name. 
left_join(dataset1, dataset2, by = "key_column_name", suffix = c("1", "2"))

This give you column names column_name1, and column_name2, as opposed to x and y.

The way to completely rename the columns would be to pass the rename argument once the data has been joined.

rename(joined_dataset, new_column_name = old_column_name, new_column_name = old_column_name)

3. Set operators

union(dataset1,dataset2)
Returns all rows that appear in both datasets (but if a row appears twice, or in both, it will only return it once).

interset(dataset1, dataset2)
Returns all rows that appear in both datasets. 

setdiff(dataset1, dataset2)
Returns rows that appear only in one dataset

setequal(dataset1, dataset2)
To check that two datasets are the same (not necessarily same order though)