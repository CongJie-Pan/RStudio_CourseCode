# Basic Programming Syntax: Infinity in R

# Division by zero results in positive infinity (Inf)
5 / 0  # This will return Inf (infinity)

# Assign infinity to variable x
x <- 5 / 0  # x will store the value Inf

# Perform operations with infinity
result1 <- 10 + x  # Adding 10 to infinity results in Inf
result2 <- x - 10  # Subtracting 10 from infinity still results in Inf
result3 <- 10 - x  # Subtracting infinity from 10 results in -Inf (negative infinity)

# Check if x is infinite or finite
is_infinite <- is.infinite(x)  # Returns TRUE because x is Inf
is_finite <- is.finite(x)      # Returns FALSE because Inf is not a finite number

# Print results
print(result1)  # Inf: Adding any number to Inf remains Inf
print(result2)  # Inf: Subtracting any number from Inf remains Inf
print(result3)  # -Inf: Subtracting Inf from a number results in -Inf
print(is_infinite)  # TRUE: x is infinite
print(is_finite)    # FALSE: x is not a finite number

# NaN (Not a Number) example

# Division of infinity by infinity results in NaN
Inf / Inf  # This returns NaN because dividing infinity by infinity is undefined

# Assign infinity to variable x
x <- Inf  # x is assigned the value Inf

# Divide infinity by itself, which results in NaN
y <- x / x  # y becomes NaN (Not a Number)

# Perform operations with NaN
result_add <- y + 10  # Adding any number to NaN results in NaN
result_mul <- y * 2   # Multiplying NaN by any number results in NaN
result_sub <- y - 1   # Subtracting any number from NaN results in NaN
result_comp <- 1 - y  # 1 minus NaN results in NaN
result_inf <- 1 - x   # 1 minus infinity (x) results in -Inf

# Check if y or x is NaN
is_nan_y <- is.nan(y)  # Returns TRUE because y is NaN
is_nan_x <- is.nan(x)  # Returns FALSE because x is Inf, not NaN

# Print results
print(result_add)  # NaN: Adding any number to NaN remains NaN
print(result_mul)  # NaN: Multiplying any number by NaN remains NaN
print(result_sub)  # NaN: Subtracting any number from NaN remains NaN
print(result_comp) # NaN: 1 - NaN remains NaN
print(result_inf)  # -Inf: 1 - Inf results in negative infinity (-Inf)
print(is_nan_y)    # TRUE: y is NaN
print(is_nan_x)    # FALSE: x is not NaN, it's Inf

# --------------------------------

# Not Available (NA) example in R

# Adding 100 to NA results in NA
NA + 100  # Result: NA

# Assign NA to variable z
z <- NA

# Perform operations with NA
result_add <- z + 10  # Adding 10 to NA results in NA
result_sub <- z - 10  # Subtracting 10 from NA results in NA
result_div <- z / 10  # Dividing NA by 10 results in NA
result_double_add <- z + z  # Adding NA to NA results in NA

# Check if the variable is NA
is_na_z <- is.na(z)  # TRUE, because z is NA
is_na_y <- is.na(y)  # Will return TRUE if y is NA, or an error if y is not defined
is_na_x <- is.na(x)  # Will return TRUE if x is NA, or an error if x is not defined
is_na_inf <- is.na(Inf)  # FALSE, because Inf is not NA
is_na_NaN <- is.na(NaN)  # Returns TRUE

# Print results
print(result_add)         # NA
print(result_sub)         # NA
print(result_div)         # NA
print(result_double_add)  # NA
print(is_na_z)            # TRUE
print(is_na_y)            # TRUE
print(is_na_x)            # FALSE
print(is_na_inf)          # FALSE
print(is_na_NaN)          # TRUE

# --------------------------------

# Vector creation in R

# Generate a sequence of numbers from 1 to 5
x <- 1:5  # x contains the vector: [1, 2, 3, 4, 5]
print(x)  # Output: [1] 1 2 3 4 5

# Generate a sequence of numbers from 20 to 35
x <- 20:35  # x contains the sequence: [20, 21, 22, ..., 35]
print(x)  # Output: [1] 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35

# Practice 1: Create vector from 1.5 to 3.5
z <- 1.5:3.5
print(z)  # Output: [1] 1.5 2.5 3.5

# Practice 3: Two vectors added together
x1 <- 1:5
y1 <- 2:6
TwoVector_Added <- x1 + y1
print(TwoVector_Added)  # Output: [1] 3 5 7 9 11

# Practice 4: Vector Recycling in R
result <- 1:3 + 1:6  # Element-wise addition with recycling
print(result)  # Output: [1] 2 4 6 5 7 9

# Generate a sequence of numbers from 1 to 9
seq_1_9 <- 1:9
print(seq_1_9)  # Output: [1] 1 2 3 4 5 6 7 8 9

# Using seq() with different arguments
x <- seq(1, 9, by = 2)  # Sequence from 1 to 9 with step size of 2
print(x)  # Output: [1] 1 3 5 7 9

y <- seq(1, 9, length.out = 5)  # Sequence with 5 equally spaced elements
print(y)  # Output: [1] 1 3 5 7 9

# Practice 5: Use sequence to generate 1, 5, 9
x <- seq(1, 9, by = 4)
print(x)  # Output: [1] 1 5 9

y <- seq(1, 9, length.out = 3)  # Using length.out to achieve the same result
print(y)  # Output: [1] 1 5 9

# Practice 6: List one-dimensional array 6 9 12 by three array combination
x <- seq(3, 9, by = 3)  # Sequence: [3, 6, 9]
y <- seq(3, 9, by = 3)  # Sequence: [3, 6, 9]
z <- x + y
print(z)  # Output: [1] 6 12 18

# Practice 7: Sequence generation
x <- seq(1, 21, by = 5)  # Sequence: [1, 6, 11, 16, 21]
print(x)  # Output: [1] 1 6 11 16 21

# Practice 8: Sequence with floating point step
x <- seq(1, 19, by = 4.5)
print(x)  # Output: [1] 1.0 5.5 10.0 14.5 19.0

# Practice 9: Two array combination

# '3:5' creates a sequence of numbers from 3 to 5: [3, 4, 5]
# '3:8' creates a longer sequence of numbers from 3 to 8: [3, 4, 5, 6, 7, 8]
# '1:3' creates a short sequence of numbers from 1 to 3: [1, 2, 3]

# Since the vectors have different lengths, R will recycle the shorter vectors to match the longest vector.
# In this case:
# - '3:5' will be recycled to [3, 4, 5, 3, 4, 5]
# - '1:3' will be recycled to [1, 2, 3, 1, 2, 3]

# The element-wise addition happens as follows:
# (3 + 3 + 1), (4 + 4 + 2), (5 + 5 + 3), (3 + 6 + 1), (4 + 7 + 2), (5 + 8 + 3)
# Resulting in: [7, 10, 13, 10, 13, 16]

# Combine these arrays using element-wise addition
result <- 3:5 + 3:8 + 1:3

# Print the result
print(result)  # Output: [7, 10, 13, 10, 13, 16]

