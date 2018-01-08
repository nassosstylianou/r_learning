require(tidyr)
#use tidyr function gather turn a dataset from wide to long
gather(wide_df, my_key, my_val, -col)
#use tidyr function spread to turn a dataset from long to wide
spread(long_df, my_key, my_val)
