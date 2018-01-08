#Using lookup tables - an example
#install the package hflights that has the flight data we will use for our example
install.packages("hflights")
library(hflights)
require(dplyr)

#create your lookuptable here to match the codes in the data with the airline full names
lookup_table <- c("AA" = "American", "AS" = "Alaska", "B6" = "JetBlue", "CO" = "Continental", 
         "DL" = "Delta", "OO" = "SkyWest", "UA" = "United", "US" = "US_Airways", 
         "WN" = "Southwest", "EV" = "Atlantic_Southeast", "F9" = "Frontier", 
         "FL" = "AirTran", "MQ" = "American_Eagle", "XE" = "ExpressJet", "YV" = "Mesa")

# Add the Carrier column to hflights using your lookup_table declared above
hflights$Carrier <- lookup_table[hflights$UniqueCarrier]

# Glimpse at hflights to see your new carrier column
glimpse(hflights)
unique(hflights$UniqueCarrier)
unique(hflights$Carrier)
