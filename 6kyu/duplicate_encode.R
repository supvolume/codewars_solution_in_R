# Solution for Count the Digit challenge
# https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/r

duplicate_encode <- function(word){
  char_list = strsplit(tolower(word), "")[[1]]
  count_char = table(char_list)
  bracket <- c()
  for (w in char_list){
    if (count_char[w] == 1){
      bracket <- c(bracket, "(")
      
    }else{
      bracket <- c(bracket, ")")
    }
  }
  return(paste(bracket, collapse = ""))
}




# Test
duplicate_encode("Success")


