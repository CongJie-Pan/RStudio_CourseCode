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

# ----