#solution for Breaking chocolate problem

break_chocolate <- function (n, m) {
  choco <- n*m-1
  if(choco < 0){
  choco <- 0
  }
  return(choco)
}