#Fill rows with NAs based on previous row
#na.locf from zoo package
You probably want to use the na.locf() function from the zoo package to carry the last observation forward to replace your NA values.
https://stackoverflow.com/questions/7735647/replacing-nas-with-latest-non-na-value 

#Using fill from tidyr
http://tidyr.tidyverse.org/reference/fill.html 