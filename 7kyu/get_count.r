#solution for Vowel Count challenge

get_count <- function(input_str){
  vowels <- c('a','e','i','o','u')
  count <- 0
  for(i in 1:nchar(input_str)){
    count <- count + (substr(input_str,i,i) %in% vowels)
  }
  return(count)
}