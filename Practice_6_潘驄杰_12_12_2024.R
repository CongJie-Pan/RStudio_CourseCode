# ---
# Practice 6
# Create a 9*9 multiplication table with two nested for loops
# 使用兩個巢狀迴圈建立九九乘法表
# ---

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

