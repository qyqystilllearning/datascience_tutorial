# x <- 30L
# 
# if(is.integer(x)){
#   print("x is an Integer")
# }
# 
# x <- c("what", "is", "truth")
# 
#   if("Truth" %in% x){
#     print("Truth is found the first time")
#   } else if("truth" %in% x){
#     print("Truth is found the second time")
#   } else {
#     print("No truth found")
#   }
# 
# x <- switch(1, "first", "second", "third")
# print(x)
# 
# v <- c("Hello", "Loop")
# cnt <- 2
# repeat {
#   print(v)
#   cnt <- cnt+1
#   if(cnt > 5){
#     break
#   }
# }
# 
# v <- c("Hello", "While Loop")
# cnt <- 2
# while (cnt < 7) {
#   print(v)
#   cnt = cnt+1
# }
# 
# v <- LETTERS[1:26]
# for (i in v){
#   print(i)
# }
# 
# for (x in LETTERS[1:10]){
#   print(x)
# }
# 
# fruits <- list("apple", "banana", "cherry")
# for (x in fruits){
#   print(x)
# }
# 
# for (x in fruits){
#   if (x == "cherry"){
#     break
#   }
#   print(x)
# }
# 
# for (x in fruits){
#   if (x == "banana"){
#     next
#   }
#   print(x)
# }
# 
# dice <- 1:6
# for (x in dice){
#   if (x == 6){
#     cat(paste("the dice number is", x, "Yahtzee! \n" ))
#   } else{
#     cat(paste("the dice number is", x, "Not Yahtzee \n"))
#   }
# }

adj <- list("red", "big", "tasty")
fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    cat(paste(x, y, "\n"))
  }
}