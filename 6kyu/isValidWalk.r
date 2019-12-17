# solution for Take a Ten Minute Walk challenge
# find if the set of given walking direction return to the starting point and within 10 minutes.
# it is a 1 minute walk for each direction.

isValidWalk <- function(walk){
  horizontal <- 0
  vertical <- 0
  for (i in walk){
    if (i == "n"){
      vertical <- vertical + 1
    } else if (i == "s"){
      vertical <- vertical - 1
    } else if (i == "e"){
      horizontal <- horizontal + 1
    } else {
      horizontal <- horizontal - 1
    }
  }
  if (horizontal == 0 & vertical == 0 & length(walk) == 10){
    return(TRUE)
  }else{
    return(FALSE)
  }
}