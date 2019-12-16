#solution for Multiples of 3 or 5 challenge

solution <- function(number){
  result <- 0
  for (n in 1:number){
    n_3 <- n*3
    n_5 <- n*5
    if ((n_3 < number)&(n_3 %in% result == FALSE)){
      result <- c(result,n_3)
    }
    if ((n_5 < number) &(n_5 %in% result == FALSE)){
      result <- c(result,n_5)
    }
  }
 return(sum(result))
}