# Solution for Count the Digit challenge
# Check if the number of "x" and "o" is equal or not

xo <- function(s){
  s_split = strsplit(s, "")[[1]]
  x_num <- 0
  o_num <- 0
  for (i in s_split){
    if (tolower(i) == "x"){
      x_num <- x_num + 1
    } else if (tolower(i) == "o"){
      o_num <- o_num + 1
    }
  }
  return(x_num == o_num)
}

# Test
xo("xxXoo")