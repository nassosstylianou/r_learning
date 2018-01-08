#Percentage count by group using dplyr

# https://stackoverflow.com/questions/42874619/percentage-count-by-group-using-dplyr

#You can either pipe this to a mutate( prop = count / sum(count) ) or directly within summarise with nrow(.). Something like this:
  df <- data.frame(colors = c("red", "blue", "green", "red", "red" , "blue"))

  df %>%
  group_by(colors) %>%
  summarise(count = n() / nrow(.) )

  #or

df %>%
  group_by(colors) %>%
  summarise(count = n() ) %>%
  mutate( prop = count / sum(count) )
