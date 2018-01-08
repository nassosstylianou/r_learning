#Regular expressions: sequence of characters and meta-characters that form a search pattern that can be used to match strings.
#In R, you can use grep or gsub to work with regex.

#Grep and Grepl functions help you check for the existence of certain character patterns within strings
GREPL
#Returns a vector of logicals if there is a match
grepl(pattern = <regex>, x = <string>)


animals <- c("cat", "dog", "spider monkey", "whale", "ant", "koala")
#to find which of the words in the animals vector includes an a
grepl(pattern = "a", animals)
#to find which of the words in the animals vector start with an a
grepl(pattern = "^a", animals)
#to find which of the words in the animals vector end with an a
grepl(pattern = "a$", animals)

GREP
#Returns a vector of indices if there is a match
grep(pattern = "a", animals)
#Others as above

#Sub and Gsub are functions that help you directly replace existence of certain character patterns within strings with others
#The sub function looks only for the first occurence of that match in each string.
sub(pattern = <regex>, replacement = <string>, x = <string>)

sub(pattern = "a", replacement = "o", animals)

#To replace each match of a pattern in a string, you should use gsub
gsub(pattern = <regex>, replacement = <string>, x = <string>)

gsub(pattern = "a", replacement = "o", animals)

#| acts like an or operator 
gsub(pattern = "a|i", replacement = "o", animals)

#Example:
"@.*\\.edu$"
# .*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
# \\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.




