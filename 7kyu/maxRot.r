# solution for Rotate for a Max challange

maxRot <- function(n) {
  Rot <- n
  for(i in 1:(nchar(n)-1)){
    n <- paste(substr(n,1,i-1),substr(n,i+1,nchar(n)),substr(n,i,i),sep='')
    Rot <- c(Rot,n)
    }
  return(as.double(max(Rot)))
}
