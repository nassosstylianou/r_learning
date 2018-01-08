#Lapply takes a vector or list, and applies a function you add to it to each of its members. If the function requires additional arguments, you pass them after you've specified the vector or a list and the function.
#The output of lapply() is a list, the same length as your vector or a list, where each element is the result of applying FUN on the corresponding element of X.
#You can use (unlist) to turn it from a list into a vector
lapply(data, function, additional_function_arguments)

leagues <- c("CHAMPIONSHIP", "PREMIER_LEAGUE", "CHAMPIONS_LEAGUE")
lower_case_leagues <- unlist(lapply(leagues, tolower))
