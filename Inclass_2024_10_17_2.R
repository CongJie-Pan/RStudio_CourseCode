# Vector Function

# 1:5 generates a sequence from 1 to 5
x1 <- 1:5
print(x1)  # Output: [1] 1 2 3 4 5

# 1:5 + 1:5 performs element-wise addition
x2 <- 1:5 + 1:5
print(x2)  # Output: [1] 2 4 6 8 10

# 1:5 + 1:10 uses recycling rule to match lengths
x3 <- 1:5 + 1:10
print(x3)  # Output: [1]  2  4  6  8 10  7  9 11 13 15

# seq(1, 10, by=2) generates a sequence from 1 to 10 with a step of 2
x4 <- seq(1, 10, by = 2)
print(x4)  # Output: [1] 1 3 5 7 9

# -----------------

# Concatenate and combine vectors in R

# 1:5 generates a sequence from 1 to 5
x1 <- 1:5
print(x1)  # Output: [1] 1 2 3 4 5

# c(1,2,3,4,5) creates a vector explicitly using the c() function
x2 <- c(1, 2, 3, 4, 5)
print(x2)  # Output: [1] 1 2 3 4 5

# 1:5 + 1:5 performs element-wise addition of two vectors
x3 <- 1:5 + 1:5
print(x3)  # Output: [1] 2 4 6 8 10

# c(1,2,3,4,5) + c(1,2,3,4,5) also performs element-wise addition
x4 <- c(1, 2, 3, 4, 5) + c(1, 2, 3, 4, 5)
print(x4)  # Output: [1] 2 4 6 8 10

# 1:5 + 1:10 uses recycling rule
x5 <- 1:5 + 1:10
print(x5)  # Output: [1]  2  4  6  8 10  7  9 11 13 15

# c(1,2,3,4,5) + c(1,2,3,4,5,6,7,8,9,10) also uses recycling rule
x6 <- c(1, 2, 3, 4, 5) + c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(x6)  # Output: [1]  2  4  6  8 10  7  9 11 13 15

# -----------------

# Assign vectors to variables
x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Perform vector addition with recycling
result_add <- x + y
print(result_add)  # Output: [1]  2  4  6  8 10  7  9 11 13 15

# Perform element-wise multiplication
z <- x * 2
print(z)  # Output: [1]  2  4  6  8 10

# ------------------

# Demonstrating the use of rep() function

# Example of rep() with different parameters
x1 <- c(5, 5, 5, 5, 5)
x2 <- rep(5, 6)
x3 <- rep(5, times=6)
x4 <- rep(1:3, times=3)
x5 <- rep(1:3, times=3, each=2)
x6 <- rep(1:3, times=3, each=2, length.out=7)

# Print results
print(x1)  # Output: [1] 5 5 5 5 5
print(x2)  # Output: [1] 5 5 5 5 5 5
print(x3)  # Output: [1] 5 5 5 5 5 5
print(x4)  # Output: [1] 1 2 3 1 2 3 1 2 3
print(x5)  # Output: [1] 1 1 2 2 3 3 1 1 2 2 3 3 1 1 2 2 3 3
print(x6)  # Output: [1] 1 1 2 2 3 3 1

# Practice 10
# How to get this vector by using repeat function: 333444555333
x <- rep(3:5, times = 1, each = 3, length.out = 12 )
print(x)

# ------------------

# Create vectors y and z
y <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
z <- c(1, 2, 4, 6, 9)

# Perform operations on y
sum_y <- sum(y)    # Calculate the sum of all elements in vector y
max_y <- max(y)    # Find the maximum value in vector y
min_y <- min(y)    # Find the minimum value in vector y
mean_y <- mean(y)  # Calculate the mean (average) of vector y

# Perform diff() on z
# The diff() function calculates the differences between consecutive elements in the vector
# For z = [1, 2, 4, 6, 9], the differences are:
# 2 - 1 = 1
# 4 - 2 = 2
# 6 - 4 = 2
# 9 - 6 = 3
# Therefore, diff_z will be [1, 2, 2, 3]
diff_z <- diff(z)

# Print results
print(sum_y)   # Output: [1] 55
print(max_y)   # Output: [1] 10
print(min_y)   # Output: [1] 1
print(mean_y)  # Output: [1] 5.5
print(diff_z)  # Output: [1] 1 2 2 3

# ---------------------------

# Create vector x and y
x <- c(6, 2, 4, 7, 9, 2, 1, 8, 3, 5, 2, 5, 6)
y <- c(9, 3, 7, 8, 1, 5)

# Sort x in ascending order
sorted_x <- sort(x)
print(sorted_x)  # Output: [1] 1 2 2 2 3 4 5 5 6 6 6 7 8 9

# Sort x in descending order
sorted_x_desc <- sort(x, decreasing = TRUE)
print(sorted_x_desc)  # Output: [1] 9 8 7 6 6 6 5 5 4 3 2 2 2 1

# Sort y in ascending order
sorted_y <- sort(y)
print(sorted_y)  # Output: [1] 1 3 5 7 8 9

# Reverses the order of the original vector 'y'
reversed_y <- rev(y)
print(reversed_y)  # Output: [1] 5 1 8 7 3 9

# The Rank Number in the elements of y : The smallest number ranked in one.
rank_y <- rank(y)
print(rank_y)  # Output: [1] 6 2 4 5 1 3

# -----------------------------
# Practice 11
  
# Create the vector x
x <- c(12, 7, 8, 4, 19)

# Get the rank of the vector x
rank_x <- rank(x)

# Print the vector and its rank
print(x)       # Output: [1] 12  7  8  4 19
print(rank_x)  # Output: [1] 4 2 3 1 5

# -----------------------------

# Data Type

# Define a string/character vector
x <- c("Hello R World")
is_character_x <- is.character(x)  # Check if x is a character vector
print(is_character_x)  # Output: TRUE

# Define a numeric vector
y <- c(9, 3, 7, 8, 1, 5)
is_numeric_y <- is.numeric(y)  # Check if y is numeric
print(is_numeric_y)  # Output: TRUE

# Check the class of x and y
class_x <- class(x)
class_y <- class(y)
print(class_x)  # Output: "character"
print(class_y)  # Output: "numeric"

# Access the 5th element of y
fifth_element_y <- y[5]
print(fifth_element_y)  # Output: 1

# Define a character vector and access the 3rd element
x_chars <- c("H", "e", "l", "l", "o", " ", "R", " ", "W", "o", "r", "l", "d")
third_element_x <- x_chars[3]
print(third_element_x)  # Output: "l"

# Define another character vector and access the 3rd element
x_words <- c("Hello", "R", "World")
third_element_words <- x_words[3]
print(third_element_words)  # Output: "World"

# ------------------------

# Vector Component

# Initial vector
y <- c(9, 3, 7, 8, 1, 5)

# Step 1: Update the 5th element to -2
y[5] <- -2
print(y)  # Output: [1]  9  3  7  8 -2  5

# Step 2: Update the 1st and 4th elements to -6
y[c(1, 4)] <- -6
print(y)  # Output: [1] -6  3  7 -6 -2  5

# --------------------------

# Practice 12

#x <- c(9, 3, 7, 8, 1, 5, 6, 4, 3, 2, 1, 7), and we use
#x[c(2, 3, 4, 11, 12)] <- y
#to get a new x vector: 9 1 2 2 1 5 6 4 3 2 5 33
#What is the y?

# Original x vector
x <- c(9, 3, 7, 8, 1, 5, 6, 4, 3, 2, 1, 7)

# Modified x vector (after replacing certain elements)
x_new <- c(9, 1, 2, 2, 1, 5, 6, 4, 3, 2, 5, 33)

# The indices that were modified
indices <- c(2, 3, 4, 11, 12)

# Deduce y by comparing elements at the specified indices
y <- x_new[indices]

# Print the deduced y
print(y)  # Output: [1]  1  2  2  5 33

# ----------------------------

# Accessing the 8th letter in the letters vector
letter_8 <- letters[8]
print(letter_8)  # Output: "h"

# Accessing the 8th and 10th letters in the letters vector
letters_8_10 <- letters[c(8, 10)]
print(letters_8_10)  # Output: "h" "j"

# Using tail() to get the last 8 letters
last_8_letters <- tail(letters, 8)
print(last_8_letters)  # Output: "s" "t" "u" "v" "w" "x" "y" "z"

# Using head() to get the first 8 letters
first_8_letters <- head(letters, 8)
print(first_8_letters)  # Output: "a" "b" "c" "d" "e" "f" "g" "h"

# -------------------------------

# Practice 13
# Please use the dataset: letters and LETTERS
# to get a character vector:
# "A""B""C""D" "E" "F" "G" "h" "i" "j" "k" "I" "m""n""o""I""J" "K""L"

# First 7 letters from LETTERS (A to G)
Letter_FirstSeven <- head(LETTERS, 7)

# Letters from 'h' to 'k' and 'I' from letters and LETTERS
letter_h_to_k <- letters[8:11]  # "h" "i" "j" "k"
Letter_I <- LETTERS[9]  # "I"

# Next segment: "m" to "o" from letters
letter_m_to_o <- letters[13:15]  # "m" "n" "o"

# Add "I", "J", "K", "L" from LETTERS
Letter_I_J_K_L <- LETTERS[9:12]  # "I" "J" "K" "L"

# Combine all segments into one vector
result <- c(Letter_FirstSeven, letter_h_to_k, Letter_I, letter_m_to_o, Letter_I_J_K_L)

# Print the result
print(result)

# ------------------------

# Vectors
x <- c(1, 2, 3, 4, 5)
y <- c(5, 4, 3, 2, 1)

# Comparisons
x_equal_y <- x == y
x_not_equal_y <- x != y
x_greater_than_3 <- x > 3

# Finding indices
which_x_greater_than_3 <- which(x > 3)
which_y_greater_than_3 <- which(y > 3)

# Max and Min
max_index_x <- which.max(x)
min_index_x <- which.min(x)

# Print results
print(x_equal_y)           # FALSE FALSE TRUE FALSE FALSE
print(x_not_equal_y)       # TRUE TRUE FALSE TRUE TRUE
print(x_greater_than_3)    # FALSE FALSE FALSE TRUE TRUE
print(which_x_greater_than_3)  # 4 5
print(which_y_greater_than_3)  # 1 2 3
print(max_index_x)         # 5
print(min_index_x)         # 1

# ----------------------------

# Basic vector
x <- c(1, 2, 3)

# Assign names to the vector elements
x.name <- c("first", "second", "third")
names(x) <- x.name

# View the named vector
print(x)
# Output:
# first  second  third
#    1      2      3

# Directly assigning names while creating the vector
x <- c("first" = 1, "second" = 2, "third" = 3)
print(x)
# Output:
# first  second  third
#    1      2      3

# Using the built-in dataset 'month.name'
print(month.name)
# Output:
# [1] "January"   "February"  "March"     "April"     "May"       "June"     
# [7] "July"      "August"    "September" "October"   "November"  "December"

# Practice 14
# Please create a vector x with numbers of days per month and use month.name to give the names for those numbers
x <- c("January"=31 , "February"=28 , "March"=31  , "April"=30  , "May"=31 , "June"=30  , "July"=31  , "August"=31 , "September"=30 , "October"=31 
       , "November"=30 , "December"=31)
print(x)

# Practice 14 Improvement

# Create the vector 'x' with the number of days in each month
x <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

# Assign the month names from 'month.name' to the vector 'x'
names(x) <- month.name

# Print the vector with the names of the months and their corresponding days
print(x)


# -------------------------------

# Names of Dataset

# Create a vector 'x' representing the number of days in each month
x <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(x) <- month.name  # Assign month names using the built-in 'month.name'

# List the months with 30 days
months_with_30_days <- names(x[x == 30])
print(months_with_30_days)  # Output: "April" "June" "September" "November"

# Use the built-in dataset 'islands'
# 'islands' contains the areas of the world's largest islands in square miles

# List the names and areas of the islands
islands_list <- islands
print(islands_list)

# Sort islands by size in ascending order (from small to large)
sorted_islands_ascending <- sort(islands)
print(sorted_islands_ascending)

# Sort islands by size in descending order (from large to small)
sorted_islands_descending <- sort(islands, decreasing = TRUE)
print(sorted_islands_descending)

# ---------------------------

# Practice 15
# Please list the smallest ten islands (area and name) by using dataset islands.
# And just list the name of the islands.

# List the names and areas of the islands
islands_list <- islands

# Sort islands by size in ascending order (from small to large)
sorted_islands_ascending <- sort(islands)

# Extract the smallest ten islands (area and name)
smallest_ten_islands <- sorted_islands_ascending[1:10]

# Sort the smallest ten islands in descending order (by size)
sorted_smallest_ten_islands <- sort(smallest_ten_islands, decreasing = TRUE)

print(sorted_smallest_ten_islands)

# Print the names of the smallest ten islands in descending order
print(names(sorted_smallest_ten_islands))







