Binding data
In baser, rbind() binds rows and cbind() to bind columns

The dplyr functions to do this are bind_rows() and bind_columns()


bind_rows(dataset1, dataset2)

combines 2 or more datasets that contain the exact same columns with the same names, appending the second dataset to the first one. 

bind_cols(dataset1, dataset2)

combines 2 or more datasets that contain the same rows in the same order to a single dataset. It does not do any matching of rows, just adds the columns in the order they appear. 

Benefits over rbind and cbind:
- faster
- save a tibble so better to view in console
- can handle lists of dataframes 
- .id argument of bind_rows(). If you would like to add a new column to your bind row output to indicate which dataframe each row came from. eg bind_rows(name = dataset1, name = dataset2, .id = "id_col_name")