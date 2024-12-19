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