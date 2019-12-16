#solution for Beginner Series #3 Sum of Numbers challenge

get_sum <- function(a, b){
  all_sum <- 0
  for (n in a:b){
  all_sum <- all_sum + n
  }
  return(all_sum)
}