# Create a vector of categorical data
# 創建一個包含"yes"和"no"的向量
x <- c("yes","no","yes","no","no","yes")

# Convert the vector to a factor
# 將向量轉換為因子型態
# This will automatically use the unique values as levels
# 這會自動使用唯一值作為層級
factor_x <- factor(x)
print(factor_x)  # Display the factor
print(levels(factor_x))  # Show the levels: n y

# Create a factor with specified levels
# 創建具有指定層級的因子
# Adding "middle" as an additional level
# 加入"middle"作為額外的層級
y <- factor(x, levels=c("yes","no","middle"))
print(y)  # Display the factor with new levels

# Create a factor with custom levels and labels
# 創建具有自定義層級和標籤的因子
# levels: defines the possible values
# labels: **defines how these values should be displayed**
z <- factor(x, 
            levels=c("yes","no","middle"),  # Original values
            labels=c("y","n","m"))          # New display values
print(z)  # Display the factor with new labels

# Additional information
# levels(): shows all possible categories
# nlevels(): shows number of levels
print(levels(z))
print(nlevels(z))

# -----

# Practice 1:

x <- factor(x, 
            # Define all possible levels (including North, which isn't in the data)
            # 定義所有可能的層級（包括資料中未出現的North）
            levels = c("East", "West", "South", "North"),
            
            # Define the corresponding single-letter labels
            # 定義對應的單字母標籤
            labels = c("E", "W", "S", "N"))

print(x)

# -----

# Create initial vector
# 創建初始向量
x <- c("yes","no","yes","no","no","yes")

# Convert to factor with custom levels and labels
# 轉換為具有自定義層級和標籤的因子
x <- factor(x, 
            levels=c("yes","no","middle"),  # Define possible values
            labels=c("y","n","m"))          # Define display labels

# 1. factor(x) - Shows the factor structure
# 顯示因子的結構
print(factor(x))
# Output: [1] y n y n n y
# Levels: y n m

# 2. levels(x) - Shows all possible levels
# 顯示所有可能的層級
print(levels(x))
# Output: [1] "y" "n" "m"

# 3. nlevels(x) - Shows the number of levels
# 顯示層級的數量
print(nlevels(x))
# Output: 3

# 4. length(x) - Shows the number of elements
# 顯示元素的數量
print(length(x))
# Output: 6

# 5. ordered(x) - Checks if the factor is ordered
# 檢查因子是否有序
print(ordered(x))
# Output: FALSE (by default factors are unordered)

# -----

# Create a character vector
# 創建字符向量
w <- c("a","b","c","d","e","f")

# Convert to factor
# 轉換為因子
w_factor <- factor(w)
print(w_factor)
# Output: a b c d e f
# Levels: a b c d e f

# Create ordered factor
# 創建有序因子
w_ordered <- ordered(w)
print(w_ordered)
# Output: [1] a b c d e f
# Levels: a < b < c < d < e < f

# Find which elements are greater than "c"
# 找出大於"c"的元素位置
which(w >= "c")
# Output: [3,4,5,6]
# Because "d","e","f" are greater than "c" in alphabetical order

# -----

# Practice 2:

# Create the vector
# 創建字符向量
x <- c("e","d","r","q","w","g","b","y","k")
# Output: [1] 3 4 5 6 8 9
# position : r q w g y k

print(x)

w_ordered <- ordered(x)
print(w_ordered)
# Levels: b < d < e < g < k < q < r < w < y
# To print out the position : r q w g y k. Start from g

which(x >= "g") 
# Output: [1] 3 4 5 6 8 9

# -----

# Create a vector with repeated letters
# 創建包含重複字母的向量
k <- c("d","a","e","c","d","b","c","d","e","f")

# Create frequency table
# 建立次數表
freq_table <- table(k)
print(freq_table)
# Output:
# a b c d e f 
# 1 1 2 3 2 1 

# Explanation:
# a appears 1 time
# b appears 1 time
# c appears 2 times
# d appears 3 times
# e appears 2 times
# f appears 1 time

# -----

# Creating a data frame with state information
# 創建包含州資訊的資料框
state_data <- data.frame(
  region = c(
    "South", "West",  "West",  "South", "West",
    "West",  "Northeast", "South", "South", "South",
    "West",  "West", "North Central", "North Central", "North Central"
  )
)

# View the structure
# 查看結構
str(state_data)

# Create frequency table of regions
# 建立地區次數表
region_freq <- table(state_data$region)
print(region_freq)
# Output shows frequency of each region

# -----

# Practice 3:

# Load the state dataset
# 載入state資料集
data("state")

# 1. How many levels for the dataset: state.region?
# 問題1：資料集state.region有多少個層級？
nlevels(state.region)  
# Output: 4 (Northeast, South, North Central, West)

# 2. What are the names of levels for the dataset: state.region?
# 問題2：資料集state.region的層級名稱是什麼？
levels(state.region)
# Output: "Northeast"  "South"  "North Central"  "West"

# 3. How many states for the dataset: state.region?
# 問題3：資料集state.region包含多少州？
length(state.region)
# Output: 50 (總共50個州)

# 4. How many states for each region?
# 問題4：每個地區包含多少州？
table(state.region)
# 使用table()函數計算每個地區的州數量
# Output:
#      Northeast  South  North Central  West
#           9      16         12        13

# Verify specific regions:
# 驗證特定地區的州數量
region_counts <- table(state.region)
cat("Northeast:", region_counts["Northeast"], "\n")  # 9 states
cat("South:", region_counts["South"], "\n")         # 16 states
cat("North Central:", region_counts["North Central"], "\n")  # 12 states
cat("West:", region_counts["West"], "\n")           # 13 states

# -----

#--------------------
# 1. Vector Operations
# 向量操作
#--------------------

# Create numeric vector
# 創建數值向量
x <- c(1,2,3,4,5,6,7,8,9,10,11,12)
# 或使用簡潔的寫法
x <- 1:12
print(x)
# Output: [1] 1 2 3 4 5 6 7 8 9 10 11 12

# Create character vector
# 創建字符向量
y <- c("a","b","c","d","e","f","g","h","i","j","k","l")
print(y)
# Output: [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l"

#--------------------
# 2. Matrix Operations
# 矩陣操作
#--------------------

# Create numeric matrix with 2 rows
# 創建2列的數值矩陣
x_matrix <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow=2)
print(x_matrix)
# Output:
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,]    1    3    5    7    9   11
# [2,]    2    4    6    8   10   12

# Create character matrix with 2 rows
# 創建2列的字符矩陣
y_matrix <- matrix(c("a","b","c","d","e","f","g","h","i","j","k","l"), nrow=2)
print(y_matrix)
# Output:
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,] "a"  "c"  "e"  "g"  "i"  "k"
# [2,] "b"  "d"  "f"  "h"  "j"  "l"

#--------------------
# 3. Array Operations
# 陣列操作
#--------------------

# Create 3D array with dimensions 2x3x2
# 創建2x3x2的三維陣列
x_array <- array(c(1,2,3,4,5,6,7,8,9,10,11,12), dim=c(2,3,2))
print(x_array)
# Output:
# , , 1
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
#
# , , 2
#      [,1] [,2] [,3]
# [1,]    7    9   11
# [2,]    8   10   12

# -----

# Practice 4

x_array <- array(c("a","b","c","d","e","f","g","h","i","j","k","l"), dim=c(2,3,2))
print(x_array)

# -----

# Create test data
# 創建測試資料
x <- 1:12  # Numeric vector 數值向量
y <- c("a","b","c","d","e","f","g","h","i","j","k","l")  # Character vector 字符向量

# 1. Using rbind
# 使用rbind函數
k <- rbind(x, y)
print(k)
# Output:
#   [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12]
# x "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10"  "11"  "12"
# y "a"  "b"  "c"  "d"  "e"  "f"  "g"  "h"  "i"  "j"   "k"   "l"

# Check data types after rbind
# 檢查rbind後的資料類型
print(is.character(k))  # TRUE - all elements converted to character
print(is.numeric(k))    # FALSE

# 2. Using data.frame

length(x)  # 應該是 12
length(y)  # 應該是 12


# Use data.frame function to solve the numeric change to character problem.
data.frame(x, y)

# -----

# Practice 5

# Create data frame with three columns
# 創建包含三個欄位的資料框
df <- data.frame(
  x.name = c("Kevin", "Peter", "Allen", "Lucy", "Jessica", "Dora"),
  x.gender = c("Male", "Male", "Male", "Female", "Female", "Female"),
  x.height = c(173, 185, 172, 163, 156, 165)
)

# Display the data frame
# 顯示資料框
print(df)
# Output:
#    x.name x.gender x.height
# 1   Kevin    Male     173
# 2   Peter    Male     185
# 3   Allen    Male     172
# 4    Lucy  Female     163
# 5 Jessica  Female     156
# 6    Dora  Female     165

# ----- Specific Value -----

# First, create the data frame
# 首先創建資料框
x.info <- data.frame(
  x.name = c("Kevin", "Peter", "Allen", "Lucy", "Jessica", "Dora"),
  x.gender = c("Male", "Male", "Male", "Female", "Female", "Female"),
  x.height = c(173, 185, 172, 163, 156, 165)
)

# 1. x.info[1,] - 第一欄(column)的所有數據
print(x.info[1,])
# Output:
#   x.name x.gender x.height
# 1 Kevin     Male      173

# 2. x.info[,1] - 第一列(row)的所有數據
print(x.info[,1])
# Output:
# [1] "Kevin" "Peter" "Allen" "Lucy" "Jessica" "Dora"

# 3. x.info[4,3] - 第4欄第3列的值
print(x.info[4,3])
# Output:
# [1] 163

# 4. x.info[-1] - 除了第一列以外的所有數據
print(x.info[-1])
# Output:
#   x.gender x.height
# 1    Male      173
# 2    Male      185
# 3    Male      172
# 4  Female      163
# 5  Female      156
# 6  Female      165

# 5. 修改列名
names(x.info) <- c("Name", "Gender", "Height")
print(x.info)
# Output:
#     Name Gender Height
# 1  Kevin   Male    173
# 2  Peter   Male    185
# 3  Allen   Male    172
# 4   Lucy Female    163
# 5 Jessica Female    156
# 6   Dora Female    165

# -----

# Practice 6

x1.info <- data.frame(
  x.name = c("Tony", "Mary", "Joe", "Jessica"),
  x.gender = c("M", "F", "M", "F"),
  x.height = c(172, 165, 182, 161)
)

names(x1.info) <- c("Name", "Gender", "Height")

print(x1.info)

