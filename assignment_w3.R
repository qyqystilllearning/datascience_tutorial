# NUMBER 1

weight <- as.numeric(readline(prompt="Enter your weight in kg: "))
height <- as.numeric(readline(prompt="Enter your height in cm: "))

bmi <- weight / (height^2) * 10000

is_underweight <- bmi <= 18.4
is_normal <- bmi >= 18.5 & bmi <= 24.9
is_overweight <- bmi >= 25.0 & bmi <= 39.9
is_obese <- bmi >= 40.0

cat("Underweight:", is_underweight, "\n")
cat("Normal:", is_normal, "\n")
cat("Overweight:", is_overweight, "\n")
cat("Obese:", is_obese, "\n")

# NUMBER 2

str1 <- readline(prompt="Enter string 1: ")
str2 <- readline(prompt="Enter string 2: ")

is_similar <- tolower(str1) == tolower(str2)

cat("This program compare 2 strings. Both inputs are similar:", is_similar, "\n")

# NUMBER 3

name <- readline(prompt="Enter your name: ")
phone <- readline(prompt="Enter your phone number (e.g., 014XXXXXXXX): ")

name_upper <- toupper(name)

first_3 <- substr(phone, 1, 3)
last_4 <- substr(phone, nchar(phone) - 3, nchar(phone))

cat("Hi,", name_upper, ". A verification code has been sent to", first_3, "-xxxxx", last_4, "\n")