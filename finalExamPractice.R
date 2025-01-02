# Final Exam Review
---
# Question 1:
  # Define input variables
  x <- 3
  y <- 4
  
  # Define the AAA function
  AAA(x, "+", y, "=", x + y)
  
  # Call the function
  cat(x, "+", y, "=", x + y)
  
  # Output:
  # 3 + 4 = 7
  # AAA = cat
---
# Question 2:
    
    x1 <- AAA(x, y) {
      BBB(x, "+", y, "=", x + y)
    }
  CCC
  
  # Output:
    # 5 + 6 = 11
  
  # What is AAA?BBB?CCC?
  # AAA = function
  # BBB = cat
  # CCC = x1(5,6)
  
  # Ans : 
  x1 <- function(x, y) {
  cat(x, "+", y, "=", x + y)
  }
  x1(5,6)
# ---
# Question 3
  
  # 第一次使用 cat() 寫入檔案，覆蓋原有內容
  cat("Hello R World!!!", 
      file = "C:/R_Programming_IO/Test01.txt") 
  # 使用 append=TRUE 將新內容附加到檔案中
  cat("AAAI am Allen!!!", 
      file = "C:/R_Programming_IO/Test01.txt", 
      BBB = CCC) # BBB 被解釋為 append，CCC 被解釋為 TRUE
  # Ans:
  # 第一次使用 cat() 寫入檔案，覆蓋原有內容
  cat("Hello R World!!!", 
      file = "C:\\Users\\USER\\Downloads\\Test01.txt") 
  # 使用 append=TRUE 將新內容附加到檔案中
  cat("\nI am Allen!!!",  # AAA = \n 換行
      file = "C:\\Users\\USER\\Downloads\\Test01.txt", append = TRUE)
  
  # 說明：
  # 1. file: 指定目標檔案的路徑。
  # 2. append: 如果設為 TRUE，會將內容附加到現有檔案末尾。
  # 3. 第一個 cat() 寫入文本 "Hello R World!!!"。
  # 4. 第二個 cat() 使用 append=TRUE 附加文本 "I am Allen!!!"。
  
  # 輸出：
  # 檔案內容：
  # Hello R World!!!
  # I am Allen!!!
# ---
# Question 4
  
  x <- c("e", "d", "r", "q", "w", "g", "b", "y", "k")
  which(x >= "k")
  
  # 3 4 5 8 9
# ---
# Question 5
  k <- c("d", "a", "e", "c", "d", "b", "c", "d", "e", "f")
  table(k)
  
  # table() 函數會對向量中的每個唯一值進行計數。
  
  # Output:
  # a b c d e f 
  # 1 1 2 3 2 1 
# ---
# Question 6
  x <- array(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), dim = c(2, 3, 2))
  x[2, 2, 1]
  
  # dim = c(2, 3, 2) 指定陣列的維度：
  # 第一維：2 行。
  # 第二維：3 列。
  # 第三維：2 個矩陣（層）。
  # 陣列結果 :
  # 1 3 5
  # 2 4 6
  
  # 7 9  11
  # 8 10 12
  
  # 取指定位置的值
  # x[2, 2, 1]：
  
  # 2：第二行。row 
  # 2：第二列。 column
  # 1：第一層。layer(第一個矩陣)
  
  # Output:
  # 1  3   5
  # 2 '4'  6
# ---
# Question 7:

  x <- c("yes", "no", "yes", "no", "no", "yes")
  x <- factor(x, levels = c("yes", "no", "middle"), labels = c("y", "n", "m"))
  nlevels(x)
  
  # 用 factor() 函數，將 x 轉換為因子類型
  # 因子有三個層級："yes"、"no" 和 "middle"
  # 將 "yes" 標記為 "y"，"no" 標記為 "n"，"middle" 標記為 "m"
  # 因為指定了三個層級："yes"、"no" 和 "middle"，無論向量中是否包含 "middle"。
  # 因子的層級數量都會是 3。
  
  # Output: 3
# ---
# Question 8:

  # 初始化向量 h，起始值為 1
  h <- c(1)
  
  # 外層迴圈：i 從 2 遍歷到 3
  for (i in 2:3) {
    # 內層迴圈：j 從 2 遍歷到 i
    for (j in 2:i) {
      # 判斷 i 是否不能被 j 整除
      if (i %% j != 0) {
        # 若條件成立，將 i 附加到向量 h 中
        h <- c(h, i)
      }
      # 打印當前向量 h
      print(h)
    }
  }
  
  # 預期輸出：
  # 當 i = 2:
  # j = 2:
  #   i %% j == 0 -> 不執行更新，h = [1]
  #   輸出：
  #   [1] 1
  #
  # 當 i = 3:
  # j = 2:
  #   i %% j != 0 -> 更新 h = [1, 3]
  #   輸出：
  #   [1] 1 3
  # j = 3:
  #   i %% j == 0 -> 不執行更新，h = [1, 3]
  #   輸出：
  #   [1] 1 3
# ---
  
  # Question 9:
  
  k <- c(0)
  for (i in 4:5) {
    l <- c(i * (i + 1))
    
    # 將計算的 l 附加到向量 k
    # 當 i = 4:
    # k = c(0, 20)
    # 當 i = 5:
    # k = c(0, 20, 30)
    
    k <- c(k, l)
  }
  
  # 最終向量 k 包含 [0, 20, 30]
  print(k)
# ---
  # Question 10
  
  x <- function(n) {
    x1 <- c(0)
    for (i in 2:n) { # 2:5
      if (i %% 2 == 0) x1 <- c(x1, i) # 0(初始值) 2 4
    }
    return(x1)
  }
  
  x(5)
# ---
  # Question 11
  
  x <- function(n) {
    x1 <- c(0)
    for (i in 5:n) { # 5:5
      if (i %% 2 == 0) x1 <- c(x1, i) # 0 因為5:5 只有一輪且5 %% 2 != 0，就結束。
    }
    return(x1)
  }
  
  x(5)
  
# ---
  x<-c("Hello R World")
  strsplit(x,"")
  #"H" "e" "l" "l" "o" " " "R" " " "W" "o" "r" "l" "d"
  
  x<-c("Hello","R","World")
  paste(x,sep="***")
  paste(x,collapse="***")
  
  paste("My",x,collapse="-")
  paste("My",x,sep="-")
  
  
  