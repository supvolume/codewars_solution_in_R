#solution for Count the Digit challenge

nbDig <- function(n,d){
    count <- 0
    for (i in 0:n){
        square <- (i*i)
        for (j in 1:(nchar(square))){
            if (substr(square,j,j) == d){
                count <- count+1
            }
        }
    }
    return(count)
}