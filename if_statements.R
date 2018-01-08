#If statements in R:
# if (condition) {
#   expr
# } else {
#   expr
# } 
if (sum(my_class > 50)) {
  print("smart class")
} else {
  print("rather average")
}

if (prop_less > 0.9) {
  print("you're among the best 10 percent")
} else if (prop_less > 0.8) {
  print("you're among the best 20 percent")
} else {
  print("need more analysis")
}
