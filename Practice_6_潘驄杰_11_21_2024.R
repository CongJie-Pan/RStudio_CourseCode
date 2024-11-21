# === InClass 11/16/2024 R Language ===
# === Practice six ===
# === Author: ConJie-Pan ===

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