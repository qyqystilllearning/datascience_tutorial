# Number 1

numbers <- 1:20

squares <- numbers^2

print(squares)

# Number 2

num1 <- 0.956786
num2 <- 7.8345901

rounded_num1 <- round(num1, digits = 2)

rounded_num2 <- round(num2, digits = 3)

print(rounded_num1)
print(rounded_num2)

# Number 3

radius <- as.numeric(readline(prompt="Enter the radius of the circle: "))

area <- pi * (radius^2)

cat("The area of the circle with radius", radius, "is:", area, "\n")
