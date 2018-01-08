#to turn a number (or other) to a character
as.character(2011)

#to turn into a number
as.numeric(4)

require(lubridate)

#turns character with year-month-date into a date (ymd corresponds to year month date order)
ymd("2015-08-22")
ymd("2015 August 22")

#mdy for month-day-year
mdy("August 22, 2015")
