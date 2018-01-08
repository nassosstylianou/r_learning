#You can create a new variable based on an existing one using mutate and an ifelse function. 

mutated_df <- 
  mutate(existing_df, new_column_name = ifelse(number == condition, "value_if_true", "value_if_false"))

