# --- Practice 4 ---

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