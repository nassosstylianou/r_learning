#rowwise

# https://sebastiansauer.github.io/rowwise_dplyr/ 
#R thinks columnwise, not rowwise, at least in standard dataframe operations. A typical rowwise operation is to compute row means or row sums, for example to compute person sum scores for psychometric analyses.

#One workaround, typical for R, is to use functions such as apply (and friends).

#However, dplyr offers some quite nice alternative:
  
#library(dplyr)

mtcars %>% 
  rowwise() %>% 
  mutate(mymean=mean(c(cyl,mpg))) %>% 
  select(cyl, mpg, mymean)