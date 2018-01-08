#Assigning headers based on existing row in dataframe
colnames(DF) = DF[1, ] # the first row will be the header
DF = DF[-1, ]          # removing the first row.
