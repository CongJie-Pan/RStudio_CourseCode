# --- Advanced Logic Function ----
# ================================

# --- Function ---

# Function that adds 1 to input value and returns the result
# 建立一個將輸入值加1並返回結果的函式
x1 <- function(x2) {
  # Add 1 to input parameter
  # 將輸入參數加1
  x2 <- x2 + 1
  # Return the modified value
  # 返回修改後的值
  return(x2)
}

# Test the function with input value 5
# 使用輸入值5測試函式
x1(5)  # Output will be 6

# ---

# Function to convert decimal numbers to percentage format
# 將小數轉換為百分比格式的函式
x3 <- function(x4) {
  # Convert to percentage and round to 2 decimal places
  # 轉換為百分比並四捨五入到小數點後兩位
  x.percent <- round(x4 * 100, digits=2)
  
  # Concatenate with % symbol
  # 串接百分比符號
  x.final <- paste(x.percent, sep="", "%")
  
  # Return the final formatted string
  # 返回最終格式化的字串
  return(x.final)
}

# Create a vector of decimal values
# 建立一個小數向量
x <- c(0.8932, 0.2345, 0.07641, 0.77351)

# Apply the function to the vector
# 將函式應用於向量
x3(x)  # Output will be: "89.32%" "23.45%" "7.64%" "77.35%"

# --- Practice 1 ---

# Function to convert US dollars to NT dollars
# 將美元轉換為新台幣的函式
exchange <- function(money) {
  # Calculate NT dollars (exchange rate 1:31)
  # 計算新台幣 (匯率 1:31)
  nt <- money * 31
  
  # Create formatted output string
  # 建立格式化輸出字串
  result <- paste("You input:", money, "US dollar, and output:", nt, "NT dollar.")
  
  # Return the result string
  # 返回結果字串
  return(result)
}

# Test the function with 500 US dollars
# 使用500美元測試函式
exchange(500)  # Output: "You input: 500 US dollar, and output: 15500 NT dollar."

# --- Reduce Lines ---
# 精簡程式碼

# Compact function to convert decimals to percentages
# 將小數轉換為百分比的精簡函式
x5 <- function(x6) paste(round(x6*100, digits=2), sep="", "%")

# Create test vector
# 建立測試向量
x <- c(0.8932, 0.2345, 0.07641, 0.77351)

# Apply function to vector
# 將函式應用於向量
x5(x)  # Output: "89.32%" "23.45%" "7.64%" "77.35%"

# --- Two Parameters ---
# 雙參數函式

# Function that adds two input parameters
# 將兩個輸入參數相加的函式
x1 <- function(x2, x3) {
  # Add the two parameters
  # 將兩個參數相加
  y <- x2 + x3
  
  # Return the sum
  # 返回總和
  return(y)
}

# Test function with values 5 and 3
# 使用數值5和3測試函式
x1(5, 3)  # Output: 8

# --- Practice 2 ---

# Function to calculate BMI using height(cm) and weight(kg)
# 使用身高(公分)和體重(公斤)計算BMI的函式
bmi <- function(height, weight) {
  
  # Convert height from cm to m and calculate BMI
  # 將身高從公分轉換為公尺並計算BMI
  height_m <- height / 100
  bmi_value <- weight / (height_m^2)
  
  # Round the result to 2 decimal places
  # 將結果四捨五入到小數點後兩位
  bmi_value <- round(bmi_value, digits=2)
  
  # Create formatted output string
  # 建立格式化輸出字串
  result <- paste("Your BMI is:", bmi_value)
  
  return(result)
}

# Test the function with height=172cm and weight=73kg
# 使用身高172公分和體重73公斤測試函式
bmi(172, 73)  # Output: "Your BMI is: 24.68"

# --- Local and Global Variable ---

# Set global variable x1
# 設定全域變數 x1
x1 <- 3

# Create function with parameter y
# 建立帶有參數y的函式
x <- function(y) {
  
  # Modify global variable x1, but in here it's still the Local variable
  # 修改全域變數 x1
  x1 <- y + 3
  # Return the new value of x1
  # 返回 x1 的新值
  return(x1)
}

# Call function with argument 3
# 使用參數3呼叫函式
x(3)  # Output: 6

# Create new variable z using x1, and x1 vlaue is still the original one.
# 使用 x1 建立新變數 z
z <- x1 + 2  # z = 3 + 2 = 5
z

# ---

# Create function with conditional logic
# 建立包含條件邏輯的函式
x <- function(y) {
  
  # If y is less than 3, set z to -1
  # 如果 y 小於 3，將 z 設為 -1
  if(y < 3) {
    z <- -1
  }
  # Otherwise set z to -2
  # 否則將 z 設為 -2
  else {
    z <- -2
  }
  # Return the value of z
  # 返回 z 的值
  return(z)
}

# Test function with different values
# 使用不同的值測試函式
x(5)  # Output: -2 (因為 5 >= 3)
x(1)  # Output: -1 (因為 1 < 3)

# --- Practice 3 ---

# Create grade evaluation function
# 建立成績評估函式
grade <- function(score) {
  
  # Check if score is passing (60 or above)
  # 檢查分數是否及格 (60分或以上)
  if(score >= 60) {
    # Create passing message
    # 建立及格訊息
    result <- paste("Your grade:", score, ", congratulations! you pass!")
  }
  else {
    # Create failing message
    # 建立不及格訊息
    result <- paste("Your grade:", score, ", sorry! you fail!")
  }
  # Return the result message
  # 返回結果訊息
  return(result)
}

# Test the function with different scores
# 使用不同分數測試函式
grade(70)  # Output: "Your grade: 70 , congratulations! you pass!"
grade(50)  # Output: "Your grade: 50 , sorry! you fail!"

# ---

# Create function with switch statement
# 建立包含 switch 語句的函式
x <- function(a) {
  # Set index based on value of a
  # 根據 a 的值設定 index
  if (a > 5) index <- 1
  if (a <= 5) index <- 2
  
  # Use switch to set value of b
  # 使用 switch 設定 b 的值
  switch(index,
         b <- -5,  # when index = 1
         b <- -6   # when index = 2
  )
  
  # Return the value of b
  # 返回 b 的值
  return(b)
}

# Test the function
# 測試函式
x(6)  # Output: -5 (因為 6 > 5, index = 1)
x(4)  # Output: -6 (因為 4 <= 5, index = 2)

# --- Practice 4 ---

# Create grade evaluation function using if and switch
# 使用 if 和 switch 建立成績等級評估函式
x <- function(score) {
  # Determine grade level index
  # 決定成績等級索引
  if (score >= 90) index <- 1      # A
  else if (score >= 80) index <- 2 # B
  else if (score >= 70) index <- 3 # C
  else if (score >= 60) index <- 4 # D
  else index <- 5                  # E
  
  # Use switch to get grade letter
  # 使用 switch 獲取成績等級字母
  grade <- switch(index,
                  "Grade: A",  # 90-100
                  "Grade: B",  # 80-89
                  "Grade: C",  # 70-79
                  "Grade: D",  # 60-69
                  "Grade: E"   # 0-59
  )
  
  return(grade)
}

# Test the function with different scores
# 使用不同分數測試函式
x(91)  # Output: "Grade: A"
x(82)  # Output: "Grade: B"
x(73)  # Output: "Grade: C"
x(64)  # Output: "Grade: D"
x(55)  # Output: "Grade: E"

# --- For Loop ---

# Print numbers from 1 to 10
# 印出1到10的數字
for (n in 1:10) {
  print(n)
}

# Create a vector with three elements
# 建立包含三個元素的向量
x <- c('hello', 'R', 'world')

# Print each element in the vector
# 印出向量中的每個元素
for (n in x) {
  print(n)
}

# ---

# Create function to calculate cumulative sum
# 建立計算累積總和的函式
x <- function(n) {
  # Initialize sum variable
  # 初始化總和變數
  s <- 0
  
  # Add each number from 1 to n
  # 將1到n的每個數字相加
  for (i in n) s <- s + i
  
  # Return the final sum
  # 返回最終總和
  return(s)
}

# Calculate sum for numbers 1 to 10
# 計算1到10的總和
x(1:10)  # Output: 55 (1+2+3+...+10)

# ---

# Create function with conditional break
# 建立具有條件中斷的函式
x <- function(n) {
  # Initialize sum variable
  # 初始化總和變數
  s <- 0
  
  # Loop through numbers
  # 遍歷數字
  for (i in n) {
    # Add current number to sum
    # 將目前數字加到總和
    s <- s + i
    
    # Break if sum reaches 10
    # 如果總和達到10則中斷
    if (s == 10) break
  }
  
  # Return the final sum
  # 返回最終總和
  return(s)
}

# Test function with numbers 1 to 10
# 使用1到10的數字測試函式
x(1:10)  # Output: 10 (會在總和達到10時停止)

# --- Practice 5 ---

# Create a function to output even numbers from 0 to 20
# 建立輸出0到20偶數的函式
x <- function() {
  # Loop through numbers from 0 to 20
  # 遍歷0到20的數字
  for (i in 0:20) {
    # Check if number is even (可被2整除)
    # 檢查數字是否為偶數
    if (i %% 2 == 0) {
      # Print even number
      # 印出偶數
      print(i)
    }
  }
}

# Call the function
# 呼叫函式
x()

# --- First Loop Example ---

# Initialize vector k with 0
# 初始化向量 k 為 0
k <- c(0)

# Loop through numbers 1 to 5 and append to k
# 遍歷1到5的數字並附加到 k
for (i in 1:5) {
  k <- c(k, i)    # 將目前的數字 i 加入向量 k
  print(k)        # 印出目前的向量 k
}

# --- Second Loop Example ---

# Initialize k with "answer"
# 初始化 k 為 "answer"
k <- c("answer")

# Loop through numbers 1 to 5
# 遍歷1到5的數字
for (i in 1:5) {
  # Create formatted string with current and next number
  # 建立包含當前數字和下一個數字的格式化字串
  l <- paste(i, "*", i+1, "=", i*(i+1), ".")
  # Append formatted string to k
  # 將格式化字串加入 k
  k <- c(k, l)
}

# Print final result
# 印出最終結果
print(k)

# --- Practice 6 ---
# Create a 9*9 multiplication table with two nested for loops
# 使用兩個巢狀迴圈建立九九乘法表

k <- c()  # Initialize empty vector 初始化空向量

# Loop through first number (1-9)
# 第一個數字的迴圈 (1-9)
for (i in 1:9) {
  
  # Loop through second number (1-9)
  # 第二個數字的迴圈 (1-9)
  for (j in 1:9) {
    
    # Create formatted multiplication string
    # 建立格式化的乘法字串
    l <- paste(i, "*", j, "=", i*j)
    
    # Append to vector k
    # 加入向量 k
    k <- c(k, l)
  }
  # Add a line break after each row
  # 每一行結束後加入換行
  k <- c(k, "\n")
}

# Print the multiplication table
# 印出乘法表
cat(k, sep = "  ")  # Using cat() with separator for better formatting

# ---
# A more formatted Version

# Create a formatted 9*9 multiplication table
# 建立格式化的九九乘法表
multiplication_table <- function() {
  
  # Loop through first number (1-9)
  # 第一個數字的迴圈 (1-9)
  for (i in 1:9) {
    
    # Loop through second number (1-9)
    # 第二個數字的迴圈 (1-9)
    for (j in 1:9) {
      # Format: right-align numbers, fixed width
      # 格式化：數字右對齊，固定寬度
      cat(sprintf("%d x %d = %2d   ", i, j, i*j))
    }
    # Add newline after each row
    # 每行結束後換行
    cat("\n\n")  # Double newline for better readability
  }
}

# Call the function
# 呼叫函式
multiplication_table()

# ----
# Test
# ---

# 1. 
x1<-function(x2)
{
  x2<-x2+1
  return(3)
}
x1(5)

# 2.
x<-function(x1,x2,x3)
{
  x1<-x2+x3
  return(x1)
}

# Directly pass the values 1,2,3 as parameters into the function. 
# The function is actually executed to calculate 2+3=5 and returns the result.
# So, the result is 5
x(1,2,3)

# 3.
x1 <- 1    # 全域變數 x1 = 1
x2 <- 2    # 全域變數 x2 = 2
x3 <- 3    # 全域變數 x3 = 3
x <- function(x1, x2, x3) {
  x1 <- x2 + x3    # 這裡的 x1 是局部變數，不會影響全域變數 x1
  return(x1)
}
x1

# 4.
x<-function(y){
  if(y<3){z<-1}
  else{z<-2}
  return(z)
}
x(5)

# 5.
x<-function(a){
  if (a>5) index<-1
  if (a<=5) index<-2
  switch (index,b<-5,b<-6)
  return(b)
}
x(6) 

# 6.
x<-function(n){
  s<-0
  for (i in 2:n) {
    s<-s+i
    if (s==3) break
  }
  return(s)
}
x(5)

# s ==3 永遠不會成立，所以等於2:5累加 = 14

# 7.
x<-function(n){
  x1<-c(0)
  for (i in 5:n){
    if(i%%2==0) x1<-c(x1,i)
  }
  return(x1)
}
x(5)

# 8.
x<-function(n){
  x1<-c(0)
  for (i in 2:n){
    if(i%%2==0) x1<-c(x1,i) # 0 2 4
  }
  return(x1)
}
x(5)

# 9.
k<-c(0)
for (i in 4:5){
  l<-c(i*(i+1))
  k<-c(k,l) # 0 20 30
}
print(k)

# 10.
# Initialize vector h with 1
# 初始化向量 h，值為 1
h <- c(1)

# Nested loops to check numbers
# 巢狀迴圈檢查數字
for (i in 2:3) {
  for (j in 2:i) {
    # Check if i is not divisible by j
    # 檢查 i 是否不能被 j 整除
    if (i %% j != 0) {
      # Append i to vector h
      # 將 i 加入向量 h
      h <- c(h, i)
      # Print current state of vector h
      # 印出目前向量 h 的狀態
      print(h)
    }
  }
}
