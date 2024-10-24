# === Basic Matrix Syntax in R ===

# Create a 3x4 matrix with numbers from 1 to 12, filled column-wise by default
matrix(1:12, nrow=3, ncol=4)
# Explanation: 
# The numbers from 1 to 12 are filled into a matrix with 3 rows and 4 columns.
# The numbers are filled column by column (this is the default behavior in R).
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# Create a 3-row matrix with numbers from 1 to 12, filling it column-wise
matrix(1:12, nrow=3)
# Explanation:
# Similar to the previous example, but the number of columns is automatically inferred.
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# Create a matrix with 4 columns, the number of rows is automatically inferred
matrix(1:12, ncol=4)
# Explanation:
# A matrix with 4 columns is created, and the number of rows is inferred to be 3.
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# Create a matrix with specific values and fill it into a 3-row matrix
matrix(c(1,2,3,4,5,6,7,8,9,10,11,15), nrow=3)
# Explanation:
# A custom vector of numbers (with 12 values) is used to create a matrix with 3 rows.
# Since no 'ncol' is specified, R will infer the number of columns as 4.
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   15

# Create a 3x4 matrix and fill it row by row (instead of the default column-wise)
matrix(1:12, nrow=3, byrow=TRUE)
# Explanation:
# The numbers 1 to 12 are filled row-wise instead of column-wise.
# This is controlled by setting 'byrow=TRUE'.
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8
# [3,]    9   10   11   12

# Create a 3x4 matrix, filling it row by row, but only using the numbers 1 to 11
matrix(1:11, nrow=3, ncol=4, byrow=TRUE)  # Incorrect: Test in Midterm Exam
# Explanation:
# The numbers 1 to 11 are used, but the matrix is supposed to have 12 elements (3 rows and 4 columns).
# Since there's one missing number, R will fill the last cell with "NA" (Not Available).
# Resulting matrix:
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8
# [3,]    9   10   11   NA

# === Basic Matrix function in R ===

# 'str()' function gives the internal structure of an object in R
# In this case, it shows the matrix's data type, dimensions, and a brief preview of its contents.
str(matrix(1:12, nrow=3, ncol=4))
# Explanation:
# 'matrix(1:12, nrow=3, ncol=4)' creates a 3x4 matrix with values from 1 to 12.
# 'str()' shows that the object is a matrix of integers with 3 rows and 4 columns.
# Output will look something like:
#  int [1:3, 1:4] 1 2 3 4 5 6 7 8 9 10 ...

# Create a 3x4 matrix 'x' with numbers from 1 to 12
x <- matrix(1:12, nrow=3, ncol=4)

# Use 'str()' again to check the internal structure of matrix 'x'
str(x)
# Output will be similar to the previous 'str()' call.

# 'nrow()' returns the number of rows in the matrix 'x'
nrow(x)
# Explanation:
# This function gives the number of rows in matrix 'x'.
# Since 'x' has 3 rows, the output will be:
# [1] 3

# 'ncol()' returns the number of columns in the matrix 'x'
ncol(x)
# Explanation:
# This function gives the number of columns in matrix 'x'.
# Since 'x' has 4 columns, the output will be:
# [1] 4

# 'dim()' returns the dimensions of the matrix 'x'
dim(x)
# Explanation:
# This function returns the dimensions of 'x' in the form of a vector.
# The first value is the number of rows, and the second is the number of columns.
# Output will be:
# [1] 3 4

# 'length()' returns the total number of elements in the matrix 'x'
length(x)
# Explanation:
# This function returns the total number of elements in 'x'.
# Since 'x' has 12 elements (3 rows × 4 columns), the output will be:
# [1] 12


# === Practice 1 ===
# Create a matrix starting at 12, with 8 rows and 9 columns.

# Create a sequence starting from 12 with 72 numbers
start_number <- 12
matrix_data <- start_number:(start_number + 71)

# Create the matrix with 8 rows and 9 columns using the sequence
result_matrix <- matrix(matrix_data, nrow=8, ncol=9)

# === Combine array ===

# Creating two vectors x and y
x <- c(2, 3, 4)
y <- c(6, 7, 9)

# Use rbind() to combine vectors x and y as rows
rbind(x, y)
# Explanation:
# 'rbind()' combines x and y as rows in a matrix.
# Resulting matrix:
#      [,1] [,2] [,3]
# x      2    3    4
# y      6    7    9

# Create vectors x, y, and z
x <- c(2, 6)
y <- c(3, 7)
z <- c(4, 9)

# Use cbind() to combine x, y, and z as columns
cbind(x, y, z)
# Explanation:
# 'cbind()' combines vectors x, y, and z as columns in a matrix.
# Resulting matrix:
#      x y z
# [1,] 2 3 4
# [2,] 6 7 9

# Create vector z and use rbind() to add it to the matrix a
z <- c(8, 9, 10)

# First, combine x and y as rows to form matrix a
a <- rbind(x, y)

# Add z as a new row to matrix a using rbind()
rbind(z, a)
# Explanation:
# The 'rbind()' function is used to add z as the first row of matrix a.
# Resulting matrix:
#      [,1] [,2]
# z      8    9   10
# x      2    6
# y      3    7


# === Practice 2 ===
# Please use cbind to output a matrix as follows:
# 5 11 21 24
# 6 12 22 25
# 7 13 23 26
x <- c(5,6,7)
y <- c(11,12,13)
z <- c(21,22,23)
k <- c(24,25,26)

cbind(5:7, 11:13, matrix(21:23, ncol=1), matrix(24:26, ncol=1)) # Method 1

cbind(x,y,z,k) # Method 2

# === Specific Number ===
x <- rbind(2:4,5:7,8:10)
print(x)
x[3,2] # Row:3, column:2 Test in Midterm Exam
x[3]
x[3,1] # x[3] == x[3,1]

# === Practice 3 ===
# 1) Please use rbind to output a matrix as follows
# 8 9 10
# 3 6 9
# 4 5 6
# 5 8 2

x <- rbind(8:10,c(3,6,9),4:6,c(5,8,2))

# 2) Get the number of second row and the first column
x[2,1]

# === Remove the certain column and row ===

matrix(1:12,nrow=4)
matrix(1:12,nrow=4)[-3,-2] # Remove row 3, and column 2

# === Practice 4 ===
# Please  create a matrix from 1 to 20, and do the output like as follows:
# 1 5 9
# 2 6 10

matrix(1:20,nrow=4)
matrix(1:20,nrow=4)[-3:-4,-4:-5]

# === change the value in the matrix ===

x <- matrix(1:20,nrow = 4)
x[3,2] <- 100
x[4,] <- 101 # row 4
print(x)

# === Practice 5 ===
# Create a matrix: x<-matrix(1:9,nrow=3), and then output as follows by replacing some numbers
# 1 4 7
# 2 5 8
# 5 8 66
x<-matrix(1:9,nrow=3)
x[3,] <- c(5,8,66)
print(x)

# === Change title names ===

x<-matrix(1:9,nrow=3)
x[3,] <- c(5,8,66)

rownames(x) <- c("a","b","c")
colnames(x) <- c("A","B","C")
print(x)

# === Practice 6:Plus two different matrix dimensions === Test in Midterm Exam

# Create a matrix -> matrix(1:12,nrow=3), and then plus x to output as follows:

# 4 10 12 14
# 6 8 14 16
# 8 10 12 18

# what is x ?

# Create matrix 'x' by subtracting a matrix from rbind()
x <- rbind(c(4, 10, 12, 14), c(6, 8, 14, 16), c(8, 10, 12, 18)) - matrix(1:12, nrow=3) # 3,4,5,6 repeat

# Create matrix 'y' by adding matrix 'x' and another matrix
y <- matrix(1:12, nrow=3) + x

# Print the matrices separately
print("Matrix x:")
print(x)

print("Matrix y (verify the result):")
print(y)

# === other operation functions ===

# Create a 3x3 matrix
x <- matrix(1:9, nrow=3)

# Calculate the sum of all elements in the matrix
sum(x)
# Output: 45 (The sum of 1+2+3+4+5+6+7+8+9)

# Calculate the sum of each row
rowSums(x)
# Output: [1] 12 15 18 (The sums of the rows: 1+4+7, 2+5+8, 3+6+9)

# Calculate the sum of each column
colSums(x)
# Output: [1]  6 15 24 (The sums of the columns: 1+2+3, 4+5+6, 7+8+9)

# Transpose the matrix (flip rows and columns)
t(x)
# Output:
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

# Extract the diagonal elements of the matrix
diag(x)
# Output: [1] 1 5 9 (These are the diagonal elements: 1, 5, and 9)

# === Create a 3-dimensional array with numbers 1 to 24 ===

# 'dim=c(3,4,2)' means we want 3 rows, 4 columns, and 2 layers (slices)
my_array <- array(1:24, dim=c(3, 4, 2))

# Print the array to see the output
print(my_array)

# Explanation of how R organizes the array:
# R fills the array column-wise in each matrix before moving to the next layer (or slice)

# === Practice 7 ===

# Please output a "3 by 3" grid by using rbind to get the sum of each line to equal to 15. 
# The chosen number should be in 1 to 9

result_rbind <- rbind(c(8, 1, 6), c(3, 5, 7), c(4, 9, 2))
print(result_rbind)

# === Practice 8 ===

# Create a matrix: x <- matrix(1:9,nrow=3), and then replace some
# numbers with another matrix as follows:
# 1 4 7
# 2 1 3
# 3 2 4
x <- matrix(1:9,nrow=3)
print("original x:")
print(x)
print("After edited x:")
x[2:3,2:3] <- matrix(1:4,nrow=2)
print(x)

# === Practice 9 ===
a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(7, 8, 9)
rbind(a,b,c)

# Practice 10
x <- matrix(10:21,nrow=3)
print(x)
print(x[2,]) # Print out row 2

x <- matrix(1:12,nrow=3)
y <- 3:6
print(x)
print(y)






