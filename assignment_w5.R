# Number 1
staff_age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

age_factor <- factor(staff_age)
cat("Levels of factor of the vector:\n")
print(levels(age_factor))

cat("\nTotal number of staff per age:\n")
print(table(age_factor))

age_ranges <- cut(staff_age, breaks = c(50, 52, 54, 56, 58, 61),
                  labels = c("50-52", "52-54", "54-56", "56-58", "58-60"),
                  right = FALSE)

cat("\nTotal number of staff per age range:\n")
print(table(age_ranges))

# Number 2
V1 <- c(2,3,1,5,4,6,8,7,9)

Matrix_1 <- matrix(V1, nrow = 3, ncol = 3)

Matrix_2 <- t(Matrix_1)

dimnames(Matrix_1) <- list(c("R1", "R2", "R3"), c("C1", "C2", "C3"))
dimnames(Matrix_2) <- list(c("R1", "R2", "R3"), c("C1", "C2", "C3"))

cat("Matrix-1:\n")
print(Matrix_1)

cat("\nMatrix-2 (Transpose of Matrix-1):\n")
print(Matrix_2)

cat("\nAddition (Matrix_1 + Matrix_2):\n")
print(Matrix_1 + Matrix_2)

cat("\nSubtraction (Matrix_1 - Matrix_2):\n")
print(Matrix_1 - Matrix_2)

cat("\nMultiplication (Element-wise) (Matrix_1 * Matrix_2):\n")
print(Matrix_1 * Matrix_2)

cat("\nDivision (Element-wise) (Matrix_1 / Matrix_2):\n")
print(Matrix_1 / Matrix_2)

# Number 3

vec1 <- 1:24
vec2 <- 25:54

Array1 <- array(vec1, dim = c(2, 4, 3))

Array2 <- array(vec2, dim = c(3, 2, 5))

cat("Array1\n")
print(Array1)

cat("\nArray2\n")
print(Array2)

cat('\n"The second row of the second matrix of the array:"\n')
print(Array1[2, , 2])

cat('\n"The element in the 3rd row and 2nd column of the 1st matrix:"\n')
print(Array2[3, 2, 1])