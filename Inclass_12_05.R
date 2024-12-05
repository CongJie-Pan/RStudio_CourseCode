# --- Logic Function / Package ---
# ================================

# Example 1: Basic string splitting
# Create a string variable
x <- c("Hello R World")
# Split the string by space
result1 <- strsplit(x, " ")
print(result1)  # Output: [1] "Hello" "R" "World"

# Example 2: Multiple string splitting
# Create multiple strings
text <- c("Hello R World", "Data Science Fun")
# Split all strings by space
result2 <- strsplit(text, " ")
print(result2)  # Output: List of 2 strings, each split by space

# Example 3: Split with different delimiter
# Create a string with different delimiter
email <- "user.name@domain.com"
# Split by multiple delimiters
result3 <- strsplit(email, "[.@]")  # Split by either '.' or '@'
print(result3)  # Output: [1] "user" "name" "domain" "com"

# ---
# Practice 1
# ---

# Advanced usage with parameters
text2 <- "HelloRWorld"
# Split with empty string to separate each character
result4 <- strsplit(text2, "") # Without the space in the "" 
print(result4)  # Output: Each character separated

# ---
# String Manipulation Functions in R
# Demonstration of various string operations and paste() function usage
# ---

# 1. Case conversion functions
text <- "Hello R Programming"
upper_text <- toupper(text)    # Convert to uppercase
lower_text <- tolower(text)    # Convert to lowercase
print(upper_text)  # Output: "HELLO R PROGRAMMING"
print(lower_text)  # Output: "hello r programming"

# 2. Numeric vector operations
# Creating and manipulating numeric vectors
z <- c(3,5,7,9,2,4,6,13,5,7,9)
unique_values <- unique(z)    # Get unique values from vector
print(unique_values)          # Output: 3 5 7 9 2 4 6 13

# 3. Basic paste() function usage
# Creating a vector of words
a <- c("Distances", "are", "normally", "used", "to", "measure", "the", "similarity")

# Different ways to use paste()
# Default paste (with space separator)
result1 <- paste(a)
print(result1)  # Output: "Distances are normally used to measure the similarity"

# Paste with no separator
result2 <- paste(a, collapse="")
print(result2)  # Output: "Distancesarenormallyusedtomeasurethesimilarity"

# Paste with custom separator
result3 <- paste(a, collapse=" ")
print(result3)  # Output: "Distances are normally used to measure the similarity"

# 4. Advanced paste() examples
# Combining multiple elements with different separators
x <- c("A", "B", "C")
y <- c("1", "2", "3")
result4 <- paste(x, y, sep="-")
print(result4)  # Output: "A-1" "B-2" "C-3"

# Creating file names
numbers <- 1:3
filenames <- paste("file", numbers, ".txt", sep="")
print(filenames)  # Output: "file1.txt" "file2.txt" "file3.txt"

# ---
# Practice 2
# ---

pracText <- c("Demography", "is", "the", "statistical", "study", "of", "populations")
pracResult <- paste(pracText, collapse="-")
print(pracResult)  

# ---
# Demonstration of combining vectors using paste()
# ---

# Creating the first vector using letters (built-in constant in R)
# letters[1:5] will select the first 5 letters: a, b, c, d, e
str1 <- letters[1:5]
print("First vector (str1):")
print(str1)

# Creating the second vector with numbers 1 to 5
str2 <- 1:5
print("Second vector (str2):")
print(str2)

# Basic combination of the two vectors
# This will pair each element from str1 with corresponding element from str2
result1 <- paste(str1, str2)
print("Basic combination:")
print(result1)

# Combining with custom separator
result2 <- paste(str1, str2, sep="-")
print("Combination with hyphen separator:")
print(result2)

# Combining and collapsing into a single string
result3 <- paste(str1, str2, sep="-", collapse=", ")
print("Combined and collapsed result:")
print(result3)

# Additional example with different vector lengths
str3 <- letters[1:3]  # Only first 3 letters
str4 <- 1:5           # 5 numbers
result4 <- paste(str3, str4)
print("Combining vectors of different lengths (recycling):")
print(result4)

# ---
# Practice 3
# ---

# Using LETTERS with specific indices
# LETTERS[20:15] selects letters T to O (backwards)
# Creating corresponding numbers 15:10
result1 <- paste(LETTERS[20:15], 15:10)
print(result1)  # Output: "T 15" "S 14" "R 13" "Q 12" "P 11" "O 10"

# ---
# Demonstration of paste() function with different sep parameter settings
# ---

# Create initial vector using letters 1-5
str5 <- letters[1:5]
print("Initial vector (str5):")
print(str5)  # Output: "a" "b" "c" "d" "e"

# Example 1: Default separator (space)
result1 <- paste("A", str5)
print("Result with default separator:")
print(result1)  # Output: "A a" "A b" "A c" "A d" "A e"

# Example 2: Empty separator
result2 <- paste("A", str5, sep="")
print("Result with empty separator:")
print(result2)  # Output: "Aa" "Ab" "Ac" "Ad" "Ae"

# Additional examples demonstrating sep parameter versatility
# Example 3: Using hyphen as separator
result3 <- paste("A", str5, sep="-")
print("Result with hyphen separator:")
print(result3)  # Output: "A-a" "A-b" "A-c" "A-d" "A-e"

# Example 4: Using multiple character separator
result4 <- paste("A", str5, sep="__")
print("Result with double underscore separator:")
print(result4)  # Output: "A__a" "A__b" "A__c" "A__d" "A__e"

# ---
# Practice 4
# ---

# Create the grade vector
x.grade <- c(81,92,76,66,87,65,53,65,71)

# Create the formatted output using paste
# Combine multiple elements with specific formatting
result <- paste(
  paste("ID_", 1:length(x.grade), ":", x.grade, "%", sep=""), 
  collapse="; "
)

print(result)
# Output: "ID_1:81%; ID_2:92%; ID_3:76%; ID_4:66%; ID_5:87%; ID_6:65%; ID_7:53%; ID_8:65%; ID_9:71%"

# ---
# Rep Function
# ---

# Create initial vectors
x1 <- c(1,2,3,4,5)                # Create numeric vector
x2 <- letters[1:5]                 # Create character vector with first 5 letters

# Using rep() function with each parameter
repeated_numbers <- rep(x1, each=2)  # Repeat each element twice
print("Numbers after rep():")
print(repeated_numbers)              # Output: 1 1 2 2 3 3 4 4 5 5

# Combine repeated numbers with letters using paste()
result <- paste(rep(x1,each=2), x2, sep="") # Contain the order
print("Final combined result:")
print(result)                        # Output: "1a" "1b" "2c" "2d" "3e"

# Additional demonstration of rep() function capabilities
# Different ways to use rep()
example1 <- rep(x1, times=2)         # Repeat entire vector twice
print("Repeat entire vector:")
print(example1)                      # Output: 1 2 3 4 5 1 2 3 4 5

example2 <- rep(x1, each=2, times=2) # Combine each and times parameters
print("Combine each and times:")
print(example2)                      # Output: 1 1 2 2 3 3 4 4 5 5 1 1 2 2 3 3 4 4 5 5

# ---
# Practice 5
# ---

# '''

# This practical exercise demonstrates how to efficiently generate 
# a standard 52-card playing deck using R's vector operations, specifically 
# leveraging the rep() and paste() functions to systematically combine card suits 
# with their values in a clean, maintainable solution.

# '''

# First, create the card suits vector
cardsuit <- c("Spades", "Hearts", "Diamonds", "Clubs")

# Create vectors for card values
# We need numbers 2-10, face cards (J,Q,K), and Ace
card_values <- c("A", 2:10 , "J", "Q", "K")

# Generate the complete deck using rep() and paste() functions
# rep(cardsuit, each=13): Repeats each suit 13 times to match with card values
# paste(): Combines the repeated suits with their corresponding values
# The resulting vector contains all 52 unique card combinations
deck <- paste(rep(cardsuit, each=13), card_values)

# Print the result
print(deck)

# ---
# grep()
# ---

# Create a sample string vector
x <- c("Hello R World")

# Using substr() to extract characters from position 4 to 9
substr_result <- substr(x, start = 4, stop = 9)
print("Substring result:")
print(substr_result)  # Output: "lo R W"

# Create a vector with separate words
x5 <- c("Hello", "R", "World")

# Using grep() to find pattern matches
# First method: returning index positions
pattern_indices <- grep("l", x5)
print("Pattern match indices:")
print(pattern_indices)  # Output: 1 (index where "l" appears)

# Second method: extracting matching elements
matching_elements <- x5[grep("l", x5)]
print("Matching elements:")
print(matching_elements)  # Output: "Hello" (elements containing "l")

# ---
# Practice 6
# ---

substr_result <- substr(state.name, start = 2, stop = 4)
print("Substring result:")
print(substr_result)

# Use grep() to output states, which include "M"
matching_elements <- state.name[grep("M", state.name)]
print("Matching elements:")
print(matching_elements)

