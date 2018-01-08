#If you are after downloading just a simple csv that is online and has a URL link, read.csv, from base r, and read_csv from the readr package, should be able to handle this for you. 

url_csv <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv")
OR
url_csv <- read_csv("http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv")

#To download a file (does not have to be a csv), you can use download.file from base r. 
#For example:
  url <- "http://s3.amazonaws.com/assets.datacamp.com/production/course_1478/datasets/swimming_pools.csv"
  destination_path <- file.path("~", "swiming_pools.csv")
  download.file(url, destination_path)
  read_csv(destination_path)