# Create a list containing a vector and a list.
list_data <- list(c("Jan","Feb","Mar"), list("green",12.3))
# Give names to the elements in the list.
names(list_data) <- c("1st_Quarter", "A_Inner_list")
# Access the first element of the list.
print(list_data[1])
# Access the thrid element. As it is also a list, all its elements will be printed.
print(list_data[2])
# Access the list element using the name of the element.
print(list_data$A_Inner_list)
# Get index of list element using value.
print(which(list_data$`1st_Quarter` == "Feb"))

# week 5

data <-
  c("East","West","East","North","North","South", "East","West","West","West","East","North")
print(data)
print(is.factor(data))
# Apply the factor function.
factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))
length(factor_data)

factor_data[6]

factor_data[6] <- "West"

new_order_data <- factor(factor_data, levels = c("East", "West", "North", "South"))
print(new_order_data)

v <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
print(v)
# very quick way to generate vector generations "gl" means generate levels

# organized in columns and rows <- meaning of matrices

M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

rownames=c("row1","row2","row3","row4")
colnames = c("col1","col2","col3")
P<-matrix(c(3:14), nrow = 4, byrow = TRUE,dimnames = list(rownames,colnames))
print(P)

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
# Create the matrix.
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames,
                                                             colnames))
# Access the element at 3rd column and 1st row.
print(P[1,3])
# Access the element at 2nd column and 4th row. print(P[4,2])
# Access only the 2nd row.
print(P[2,])
# Access only the 3rd column.
print(P[,3])


matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow= 2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow= 2)
print(matrix2)

result <- matrix1 + matrix2 
cat("Result of addition", "\n") 
print(result)

result <- matrix1 - matrix2 
cat("Result of addition", "\n") 
print(result)

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("ROW1", "ROW2", "ROW3")
matrix.names <- c("Matrix1", "Matrix2")
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names, column.names, matrix.names))
print(result)
print(result[3,,2])
print(result[1,3,1])
print(result[,2,1])

# array manipulation
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

array1 <- array(c(vector1,vector2),dim = c(3,3,2))

vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,14,1,2,6,0)

array2 <- array(c(vector1,vector2),dim = c(3,3,2))
# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]
print(matrix1)
print(matrix2)
# Add the matrices.
result <- matrix1+matrix2 
print(result)


# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)
# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(1), sum) # row
print(result)
result <- apply(new.array, c(2), sum) # column
print(result)
# 56 comes from 5 + 10 + 13 x 2 and seterusnya 