# --- Data Manipulation (IO) ----
# ================================

# --- cat function ---

# 單行輸出
cat("Hello R World")

# 多行輸出，使用 \n 進行換行
cat("Hello\nR\nWorld")

# 輸出變數運算
x <- 3
y <- 4
cat(x, "+", y, "=", x + y)

# --- print() and cat() ---

x <- 3

# 使用 print() 輸出變數
print(x)

# 試圖在 print() 中結合文字與運算
# print(x, "+", y, "=", x + y) # 這樣會報錯

# --- scan function ---

# 默認輸入，按 Enter 結束
data <- scan()

# 限定輸入為整數類型
data_int <- scan(what = integer())

# 限定輸入為字符類型
data_char <- scan(what = character())

# 限制僅輸入一次
single_input <- scan(nmax = 1)

# --- cat() in function application ---

# 定義一個簡單函數使用 cat()
x1 <- function() { cat(x, "+", y, "=", x + y) }

# 呼叫函數
x <- 5
y <- 6
x1()

# 改良版本，接收參數
x1 <- function(x, y) { cat(x, "+", y, "=", x + y) }
x1(5, 6)

# --- Practice 1 ---

sum_n <- function() {
  
  cat("Please input one number(n) from 5 to 10: End by Enter key \n")
  
  # Get user input
  n <- scan(nmax = 1, what = integer())
  
  # Check the range
  if (n < 5 || n > 10){
    cat("[The number is not in the range from 5 to 10]\n")
  } else {
    cat("You input n = ", n, "\n")
    cat("1+2+...+", n, "=", sum(1:n), "\n")
  }
}

# Call the function
sum_n()

# --- Create a text file ---

# 設定檔案路徑
file_path <- "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/Test01.txt"

# 創建檔案並寫入第一行內容
cat("Hello R World!!!", file = file_path)

# 預設情況下覆蓋檔案內容（本行可測試覆蓋效果）
cat("I am Allen!!!", file = file_path)

# 如需新增內容，加入 append = TRUE
cat("\nI am Allen!!!", file = file_path, append = TRUE)

# 從檔案讀取內容
file_content <- scan(file = file_path, what = character(), sep = "\n")

# 將檔案內容輸出到 R Console
cat("File Content:\n")
print(file_content)

# --- Practice 2 ---

calc_bmi <- function(){
  
  # 設定檔案路徑
  file_path <- "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/BMI.txt"
  
  cat("Please input your height(cm): \n")
  
  # Get user input
  input_height_cm <- scan(nmax = 1, what = numeric())
  
  cat("Please input your weight(kg): \n")
  
  # Get user input
  input_weight <- scan(nmax = 1, what = numeric())
  
  # Calculate BMI
  input_height_m <- input_height_cm / 100 # cm to m(meter)
  bmi <- input_weight / (input_height_m ^ 2)
  bmi <- round(bmi, digits = 2)
  
  # Save the result to the document
  cat("Your BMI is ", bmi, file = file_path) # 修正: 明確指定 file = 
  cat("\nWe have created a file called BMI.txt, please check it!\n")
  
}

# Call the function
calc_bmi()

# --- Read and Establish the csv file ---

filePath_txt = "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/BMI.txt"
filePath_csv = "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/BMI.csv"

# 讀取文字檔案
x <- scan(file = filePath_txt, what = character())

# 將內容寫入 .csv 檔案
write.csv(x, filePath_csv, row.names = FALSE)

# 從 .csv 檔案讀取內容
bmi_data <- read.csv(filePath_csv)

# 檢視讀取的內容
print(bmi_data)

# --- Read light.csv file ---

filePath_lightCSV = "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/light.csv"
saveFilePath_lightGroupCSV = "D:/AboutCoding/RStudio_CourseCode/inclassCodeWrite_file/light_with_groups.csv"

# 讀取 light.csv 文件
light_data <- read.csv(filePath_lightCSV)

# 查看讀取的數據
print(light_data)

# 新增分組欄位
light_data$group <- with(light_data, ifelse(light >= 0 & light < 120, 1,
                                            ifelse(light >= 120 & light < 250, 2,
                                                   ifelse(light >= 250 & light < 1000, 3,
                                                          ifelse(light >= 1000 & light < 5000, 4,
                                                                 5)))))

# 查看分組後的數據
print(light_data)

# 保存到新文件
write.csv(light_data, saveFilePath_lightGroupCSV, row.names = FALSE)








