# Create vectors for our data frame
# Define name vector with 6 names
x1.name <- c("Kevin", "Peter", "Allen", "Lucy", "Jessica", "Dora")

# Define gender vector corresponding to the names
x1.gender <- c("Male", "Male", "Male", "Female", "Female", "Female")

# Define height vector (in centimeters)
x1.height <- c(173, 185, 172, 163, 156, 165)

# Create a data frame combining all vectors
# stringsAsFactors = FALSE prevents strings from being converted to factors
x1.info <- data.frame(x1.name, x1.gender, x1.height, stringsAsFactors = FALSE)

# Set column names for the data frame
names(x1.info) <- c("Name", "Gender", "Height")

# Display the original data frame
print("Original data frame:")
print(x1.info)

# === Replace the item ===

# PART 1: Replace a single item
# Replace 'Jessica' with 'Jessi' in row 5, column 1
x1.info[5, 1] <- "Jessi"

# Display the data frame after replacing one item
print("\nAfter replacing 'Jessica' with 'Jessi':")
print(x1.info)

# PART 2: Replace an entire row
# Replace row 5 with new data for Alex
x1.info[5,] <- c("Alex", "Male", 186)

# Display the final data frame after replacing the entire row
print("\nAfter replacing row 5 with Alex's data:")
print(x1.info)

# === Practice One ===

x1.name <- c("Tony", "Mary", "Joe", "Jessica")

x1.gender <- c("Male", "Female", "Male", "Female")

x1.score <- c(81, 92, 76, 53)

x1.practice <- data.frame(x1.name, x1.gender, x1.score, stringsAsFactors = FALSE)

# Set column names for the data frame
names(x1.practice) <- c("Name", "Gender", "Score")

# Display the original data frame
print("Original data frame:")
print(x1.practice)

# Replace '77' with '76' in row 3, column 3
x1.practice[3, 3] <- "77"

print("\nAfter replacing '76' with '77':")
print(x1.practice)

# === Add a row ===

# First create the initial data frame (from previous example)
# Create vectors for our data frame
x1.name <- c("Kevin", "Peter", "Allen", "Lucy", "Jessica", "Dora")
x1.gender <- c("Male", "Male", "Male", "Female", "Female", "Female")
x1.height <- c(173, 185, 172, 163, 156, 165)

# Create the initial data frame
x1.info <- data.frame(x1.name, x1.gender, x1.height, stringsAsFactors = FALSE)
names(x1.info) <- c("Name", "Gender", "Height")

# Display the original data frame
print("Original data frame:")
print(x1.info)

# (Important) Add a new row using rbind()
# rbind() combines data frames or matrices by rows
x1.info <- rbind(x1.info, c("Amy", "Female", 166))

# Display the updated data frame
print("\nData frame after adding Amy's information:")
print(x1.info)

# === Practice Two ===

# First create the initial data frame (from previous example)
# Create vectors for our data frame
x2.name <- c("Tony", "Mary", "Joe", "Jessica")
x2.gender <- c("Male", "Female", "Male", "Female")
x2.score <- c(81, 92, 76, 53)

# Create the initial data frame
x2.practice <- data.frame(x2.name, x2.gender, x2.score, stringsAsFactors = FALSE)
names(x2.practice) <- c("Name", "Gender", "Score")

# Display the original data frame
print("Original data frame:")
print(x2.practice)

# rbind() combines data frames or matrices by rows
x2.practice <- rbind(x2.practice, c("Amy", "Female", 66))

# Display the updated data frame
print("\nData frame after adding Amy's information:")
print(x2.practice)

# === Data frame with row combine ===

# Create the first data frame (x1.info)
# Contains information about 4 people: Tony, Mary, Joe, and Jessica
x1.info <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"),
  Height = c(172, 165, 182, 161),
  stringsAsFactors = FALSE
)

# Display the first data frame
print("First data frame (x1.info):")
print(x1.info)

# Create the second data frame (x2.info)
# Contains information about 4 more people: Kevin, Peter, Joe, and Dora
x2.info <- data.frame(
  Name = c("Kevin", "Peter", "Joe", "Dora"),
  Gender = c("Male", "Male", "Male", "Female"),
  Height = c(173, 168, 172, 163),
  stringsAsFactors = FALSE
)

# Display the second data frame
print("\nSecond data frame (x2.info):")
print(x2.info)

# Combine both data frames using rbind()
# This will stack x2.info below x1.info
x12.info <- rbind(x1.info, x2.info)

# Display the combined data frame
print("\nCombined data frame (x12.info):")
print(x12.info)

# Display the structure of the combined data frame
print("\nStructure of the combined data frame:")
str(x12.info)

# Display summary statistics of the combined data frame
print("\nSummary of the combined data frame:")
summary(x12.info)

# === Practice Three ===

# Create the first data frame (x31.practice)
# Contains information about 4 people: Tony, Mary, Joe, and Jessica
x31.practice <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53),
  stringsAsFactors = FALSE
)

# Display the first data frame
print("First data frame (x31.practice):")
print(x31.practice)

# Create the second data frame (x32.practice)
# Contains information about 4 more people: Peter,  Lucy, Dora, Kevin
x32.practice <- data.frame(
  Name = c("Peter",  "Lucy", "Dora", "Kevin"),
  Gender = c("Male", "Female", "Female", "Male"),
  Score = c(86, 72, 96, 83),
  stringsAsFactors = FALSE
)

# Display the second data frame
print("\nSecond data frame (x32.practice):")
print(x32.practice)

# Combine both data frames using rbind()
# This will stack x2.info below x1.info
x312.pracrice <- rbind(x31.practice, x32.practice)

# Replace '76' with '79' in row 3, column 3
x312.pracrice[3, 3] <- "79"

# Display the combined data frame
print("\nCombined data frame (x312.pracrice):")
print(x312.pracrice)

# === Function and cbind Column ===

# Create the initial data frame with Name, Gender, and Score
# 建立初始資料框，包含姓名、性別和分數
x1.info <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53),
  stringsAsFactors = FALSE
)

# Display the original data frame
print("Original data frame:")
print(x1.info)

# Create a new vector for Age
# 建立新的年齡向量
Age <- c(20, 22, 19, 21)

# Combine the original data frame with the Age vector using cbind()
# 使用 cbind() 將年齡向量加入資料框
x1.info <- cbind(x1.info, Age)

# Display the updated data frame
print("\nData frame after adding Age column:")
print(x1.info)

# Display the structure of the final data frame
print("\nStructure of the final data frame:")
str(x1.info)

# Display summary statistics
print("\nSummary of the final data frame:")
summary(x1.info)

# === Practice Four ===

# 建立資料框
x4.practice <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"),
  Score = c(81, 92, 76, 53),
  stringsAsFactors = FALSE
)

# 建立Final欄位（直接用邏輯判斷）
Final <- ifelse(x4.practice$Score >= 60, "pass", "fail")

# 合併資料
x4.practice <- cbind(x4.practice, Final)

# 顯示結果
print(x4.practice)

# === Logic Function ===

# Create a sequence
x <- c(1:8)  # BBB = 1:8
print("Original vector:")
print(x)

# Using which() for conditional judgement
x[which(x >= 5)] <- "h"  # CCC = "h"
x[which(x < 5)] <- "l"   # Replace with "l"

print("\nAfter conditional replacement:")
print(x)

# Verify the result
print("\nVerification:")
print(all(x[1:4] == "l"))  # 應該是 TRUE
print(all(x[5:8] == "h"))  # 應該是 TRUE

# === Practice Five ===

# Create a data frame with student information
x5.practice <- data.frame(
  Name = c("Tony", "Mary", "Joe", "Jessica"),
  Gender = c("Male", "Female", "Male", "Female"), 
  Score = c(81, 92, 76, 53),
  stringsAsFactors = FALSE
)

# Display original data
print("Original data:")
print(x5.practice)

# Add Result column based on Score evaluation using which()
# Initialize Result column
x5.practice$Result <- character(nrow(x5.practice))
# Set "Pass" for scores >= 60
x5.practice$Result[which(x5.practice$Score >= 60)] <- "Pass"
# Set "Fail" for scores < 60
x5.practice$Result[which(x5.practice$Score < 60)] <- "Fail"

# Display final results
print("\nResults after evaluation:")
print(x5.practice)

# === Practice six ===

# Create a vector of light values
light <- c(373, 521, 43, 7542, 10287, 2701, 28, 143, 727)

# Initialize result vector with same length as light
result <- numeric(length(light))

# Use which() for each category
result[which(light >= 0 & light < 120)] <- 1
result[which(light >= 120 & light < 250)] <- 2
result[which(light >= 250 & light < 1000)] <- 3
result[which(light >= 1000 & light < 5000)] <- 4
result[which(light >= 5000)] <- 5

# Display results
print("Light values:")
print(light)
print("\nCategorized results:")
print(result)

# === Quiz ===

# --- 1. --- 
# x1.info<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
# We would like to replace Mary's score from 92 to 91, how do we do?

x1.info<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
print(x1.info)

x1.info[2,3]<-91
print(x1.info)

# --- 2. ---
# x1.info<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
# We would like to add a row for "Amy", how do we do?

x1.info<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)

x1.info<-rbind(x1.info,c("Amy","Female",66))

print(x1.info)

# --- 3. ---
# We would like to combine two data frame together to have 8 rows, and how do we do?

x1<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)

x2<-data.frame(Name=c("Peter","Lucy","Dora","Kevin"),Gender=c("Male","Female","Female","Male"),Score=c(86,72,96,83),stringsAsFactors = FALSE)

x3<-rbind(x1,x2)

print(x3)

# --- 4. ---
# We would like to  add a column: Age<-c(20,22,19,21), and how do we do?

x1.info<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
Age<-c(20,22,19,21)
x1.info<-cbind(x1.info,Age)
print(x1.info)

# --- 5. ---
# What is the "AAA"?
# Answer : which

x<-c(1,BBB)
x
x[AAA(x>=5)]<-"CCC"
x[AAA(x<5)]<-"l"
x
# Output: "l" "h"

# --- 6. ---
# What is the "BBB"?
# Answer : 9

x <- c(1,9)  # BBB is 1:8
x[which(x >= 5)] <- "h"  # Replace numbers >= 5 with "h"
x[which(x < 5)] <- "l"   # Replace numbers < 5 with "l"
x  # Output: "l" "l" "l" "l" "h" "h" "h" "h"

# Output: "l" "h"

# --- 7. ---
# What is the "CCC"?

x<-c(1,BBB)
x
x[AAA(x>=5)]<-"CCC"
x[AAA(x<5)]<-"l"
x

x <- c(1, 9)           # 建立向量
x                        # 顯示原始向量
x[which(x >= 5)] <- "h"  # CCC 就是 "h"
x[which(x < 5)] <- "l"   # 小於 5 的替換為 "l"
x                        # 最終輸出: "l" "h"

# Output: "l" "h"

# --- 8. ---
# Which one is the logic function?
# Answer : which

# --- 9. ---
# Which one can combine different data type?
# data.frame

# --- 10. ---
# How many rows accroding to the output below ?
# 4

x1<-data.frame(Name=c("Tony","Mary","Joe","Jessica"),Gender=c("Male","Female","Male","Female"),Score=c(81,92,76,53),stringsAsFactors = FALSE)
x2<-data.frame(Name=c("Peter","Lucy","Dora","Kevin"),Gender=c("Male","Female","Female","Male"),Score=c(86,72,96,83),stringsAsFactors = FALSE)
x3<-data.frame(x1,x2)
x3


