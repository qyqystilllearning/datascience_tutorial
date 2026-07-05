check_armstrong <- function(num) {
  cat("Input an integer:", num, "\n")
  
  num_str <- as.character(num)
  

  n <- nchar(num_str)
  
  digits <- as.numeric(unlist(strsplit(num_str, "")))
  
  sum_of_powers <- sum(digits^n)
  
  if (sum_of_powers == num) {
    cat(num, "is an Armstrong number.\n")
  } else {
    cat(num, "is not an Armstrong number.\n")
  }
}

cat("Check whether an n digits number is Armstrong or not:\n")
check_armstrong(1634)
check_armstrong(100)