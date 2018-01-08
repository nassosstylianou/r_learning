#While loop 
while (condition) {
expr
}

i <- 1

while (logs[[i]]$success) {
  print(logs[[i]]$details$message)
  i <- i + 1
}
