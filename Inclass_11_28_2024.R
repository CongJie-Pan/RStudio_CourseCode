# --- Advanced Math Operation ---
# ================================

# Create a dataframe with three columns: Name, Gender, and Score

# stringsAsFactors = FALSE prevents automatic conversion of strings to factors
x <- data.frame(
  # Column 1: Names of students
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  
  # Column 2: Gender information for each student
  Gender = c("Male", "Female", "Male", "Female"),
  
  # Column 3: Test scores for each student
  Score = c(81, 92, 76, 53),
  
  # Prevent automatic conversion of strings to factors
  stringsAsFactors = FALSE
)

# Display the dataframe
print(x)

# Question 1: How to show "Joe"?
# Using [row, column] notation to get a specific value
# x[3,1] means: row 3, column 1
x[3,1]  # This will show "Joe"

# Question 2: How to show all Joe's data?
# Using [row,] notation to get all columns for a specific row
# x[3,] means: all columns from row 3
x[3,]   # This will show all data for Joe

# Question 3: How to show all scores?
# Using [,column] notation to get all rows for a specific column
# x[,3] means: all rows from column 3
x[,3]   # This will show all scores

# ---
# List

# First attempt using data.frame - This will cause an error
# Error occurs because vectors have different lengths:
# Name has 3 elements, while Gender and Score have 4 elements
x <- data.frame(
  Name = c("Tony", "Mary", "Joe"),              # 3 elements
  Gender = c("Male", "Female", "Male", "Female"), # 4 elements
  Score = c(81, 92, 76, 53),                     # 4 elements
  stringsAsFactors = FALSE
)

# Solution: Using list instead of data.frame
# Lists can contain elements of different lengths
y <- list(
  # First element: Name vector with 3 names
  Name = c("Tony", "Mary", "Joe","Tim", "Oscar"),
  
  # Second element: Gender vector with 4 genders
  Gender = c("Male", "Female", "Male", "Female"),
  
  # Third element: Score vector with 4 scores
  Score = c(81, 92, 76, 53)
)

# Display the list
print(y)

# Accessing elements in a list
print(y$Name)      # Access the Name vector
print(y[[1]])      # Access the first element (Name vector)
print(y[["Name"]]) # Access element by name

# First, create our list
y <- list(
  Name = c("Tony", "Mary", "Joe"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53)
)

# Different ways to access list data:

# 1. How to show all names?
y[1]      # Returns a list with the Name element
y[[1]]    # Returns the Name vector directly
y$Name    # Returns the Name vector using $ operator

# 2. How to show all scores?
y[3]      # Returns a list with the Score element
y[[3]]    # Returns the Score vector directly
y$Score   # Returns the Score vector using $ operator

# 3. How to show Mary's score?
y[[3]][2]    # Using position: 3rd element (Score), 2nd value
y$Score[2]   # Using $ operator and position
y[["Score"]][2]  # Using name and position

# 4. How to show Mary's data?
mary_data <- list(
  Name = y$Name[2],
  Gender = y$Gender[2],
  Score = y$Score[2]
)
print(mary_data)

#---
# Combine two data frame

# Create the first dataframe (x)
# Contains information about the first group of students
x <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53),
  stringsAsFactors = FALSE
)

# Create the second dataframe (z)
# Contains information about the second group of students
z <- data.frame(
  Name = c("Peter", "Lucy", "Dora", "Kevin"),
  Gender = c("Male", "Female", "Female", "Male"),
  Score = c(86, 72, 96, 83),
  stringsAsFactors = FALSE
)

# Combine both dataframes into a list
x1 <- list(x, z)

x1

# Alternative way to combine with named elements
x2 <- list(
  group1 = x,
  group2 = z
)

x2

# Different ways to access the combined data
# Access first dataframe
print(x1[[1]])  # First dataframe
print(x2$group1) # First dataframe with named access

# Useful operations for the combined data
str(x1)         # View the structure of the combined list
length(x1)      # Number of dataframes in the list

# Question 1 : How to show Dora's data ?
print(x1[[2]][3,])

# Question 2 : How to show all second data frame score ?
print(x1[[2]][,3])

# Question 3 : How to show Dora's score ?
print(x1[[2]][3,3])

# ---
# Add a new object

# Create initial list with three elements
y <- list(
  Name = c("Tony", "Mary", "Joe"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53)
)

y

# Replace all names with new ones
y$Name <- c("Peter", "Lucy", "Dora", "Kevin")

# Access and modify specific parts of the list
# Get elements 2-3 of the list
y[2:3]

# Replace elements 2-3 with new list
y[2:3] <- list(
  Gender = c("Male", "Female", "Female", "Male"),
  Score = c(41, 22, 56, 63)
)

y[2:3]

# Add a new object (Height) to the list
# Using $ operator to add new element
y[["Height"]] <- c(170, 167, 172, 183)
# Alternative way:
# y$Height <- c(170, 167, 172, 183)

# Display the updated list
print(y)

# --- Practice ---

# Create the initial list with basic information
x2 <- list(
  # Student names
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  # Gender information
  Gender = c("Male", "Female", "Male", "Female"),
  # Test scores
  Score = c(81, 92, 76, 53)
)

# Add Age column to the list
x2$Age <- c(23, 22, 25, 19)

# Add pass/fail evaluation based on scores
# Pass if score >= 60, fail otherwise
x2$SFinal <- ifelse(x2$Score >= 60, "pass", "fail")

# Add result indicators
# "P" for pass, "F" for fail
x2$SResult <- ifelse(x2$Score >= 60, "P", "F")

# Display the complete list
print(x2)

# You can also display specific elements:
cat("\nName values:\n")
print(x2$Name)

cat("\nGender values:\n")
print(x2$Gender)

cat("\nScore values:\n")
print(x2$Score)

cat("\nAge values:\n")
print(x2$Age)

cat("\nPass/Fail Status:\n")
print(x2$SFinal)

cat("\nResult Indicators:\n")
print(x2$SResult)

# data analysis

# Summary statistics
summary_stats <- list(
  mean_score = mean(x2$Score),
  pass_rate = mean(x2$Score >= 60),
  age_range = range(x2$Age)
)

summary_stats

# Gender distribution
table(x2$Gender)

# Score distribution by gender
tapply(x2$Score, x2$Gender, mean)

# ---
# === Test Part ===
# ---

# 1. How can data frame show all Jessica's data"?
x<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
x
x[4,]

# 2.AAA is list
x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
x

# 3. What is the output if we use: x[[3]][2]
x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
x[[3]][2]

# 4. What is the output if we use: x[[1]][2]
x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
x[[1]][2]

# 5. What is the output if we use: x[[2]][2]
x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
x[[2]][2]

# 6. How to show Dora's data?
x<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
y<-data.frame(Name=c("Peter","Lucy","Dora","Kevin"),Gender=c("Male","Female","Female","Male"),Score=c(86,72,96,83),stringsAsFactors = FALSE)
z<-list(x,y)
z[[2]][3,]

# 7. How to show Dora's score?(Continue with 6.)
z[[2]][3,3]

# 8. x[2:3]<-AAA(c("Male","Female","Female","Male"),c(41,22,56,63))
#What is the "AAA"?

x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
x
# If we try to replace 2nd and 3rd objects by:
x[2:3]<-list(c("Male","Female","Female","Male"),c(41,22,56,63))
x

# 9. x[BBB]<-c(170,167,172,183)
#What is the "BBB"?

x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53))
#If we try to add a new object:
x[["Height"]] <- c(170,167,172,183)
x

# 10.x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53), Height=c(170,167,172,183))
#What if we want to output: 172 ?
x<-list(Name=c("Tony","Mary","Joe"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53), Height=c(170,167,172,183))
x$Height[3]
