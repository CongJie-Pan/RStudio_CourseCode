# 20240926 RStudio InclassPractice
# editor: JayPan 資管三乙 潘驄杰
---
  
# Practice 1 : Three points: A(-8,-2), B(0,6), C(3,-2), use R to find out the triangle area?
  
  # Coordinates of the points
  x1 <- -8
  y1 <- -2
  x2 <- 0
  y2 <- 6
  x3 <- 3
  y3 <- -2
  
  # Calculate the base (horizontal distance between A and C)
  triBase <- abs(x3 - x1)
  
  # Calculate the height (vertical distance from B to line AC)
  triheight <- abs(y2 - y1)
  
  # Calculate the area using the formula (base * height ) /2 
  triArea <- (triBase * triheight) / 2
  
  # Print the triangle area
  print(paste("The triangle area is : ", triArea))
  
# ---
  
# Practice 2 : Center of circle: A(6,0) and B(0,0) is one point at perimeter, use R to find out 
# • a) circular area • b) circular perimeter
  
  # Coordinates of the center (A) and a point on the perimeter (B)
  x1 <- 6
  y1 <- 0
  x2 <- 0
  y2 <- 0
  
  # Calculate the radius (distance between A and B)
  circleRadis <- sqrt((x2 - x1)^2 + (y2 - y1)^2)
  
  # Calculate the circular area
  circular_area <- pi * circleRadis^2
  
  # Calculate the circular perimeter
  circular_perimeter <- 2 * pi * circleRadis
  
  # Round the results to three decimal places
  circular_area <- round(circular_area, 3)
  circular_perimeter <- round(circular_perimeter, 3)
  
  # Print out the results
  print(paste("The (a) Circular area is about: ", circular_area))
  print(paste("The (b) Circular perimeter is about: ", circular_perimeter))
#---
  
# Practice 3: Given two objects represented by the tuples (17,7,35,53) and (19,1,36,51) 
# Use R to find the Euclidean distance ?
  
# Code Edition 1
  
  # Tuple One
  x1 <- 17
  y1 <- 7
  z1 <- 35
  t1 <- 53
  
  # Tuple Two
  x2 <- 19
  y2 <- 1
  z2 <- 36
  t2 <- 51
  
  EuclideanDis <- round(sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2 + (t2 - t1)^2),3)
  
  print(paste("The Euclidean Distance is about (Edition 1):", EuclideanDis))

# Code Edition 2
  
  # Define a function to calculate Euclidean distance
  euclidean_distance <- function(p1, p2) {
    sqrt(sum((p1 - p2)^2))
  }
  
  # Define two tuples as vectors
  tuple1 <- c(17, 7, 35, 53)
  tuple2 <- c(19, 1, 36, 51)
  
  # Calculate the Euclidean distance
  EuclideanDis_CodeEd2 <- euclidean_distance(tuple1, tuple2)
  
  # Print the result
  print(paste("The Euclidean Distance is about (Edition 2):", round(EuclideanDis_CodeEd2,3)))
  
#---
  
# Practice 4 : What is the output: floor(-234.45)
  TheFloorNum <- floor(-234.45) #output -235 (floor 表示向下最小 負數愈大愈小)
  print(paste("The number of floor(-234.45) is:", TheFloorNum))
  
#---
  
# Practice 5 : What is the output: ceiling(-234.45) 
  TheCeilingNum <- ceiling(-234.45) #output -234 (ceiling 表示向上最大 負數愈小愈大)
  print(paste("The number of ceiling(-234.45) is:", TheCeilingNum))
  
#--- 
  
# Practice 6: There are five people arranged in a row. Use R to calculate how many permutation ways?
  
  FivePeoplePermu <- factorial(5)
  print(paste("Five People Permutation:", FivePeoplePermu))
  
#---
  
# Practice 7 : The coach wants to choose three people from five basketball players:A, B, C, D, and E. Use R to calculate how many options can be chose?
  
  # Calculate the number of combinations
  n <- 5
  k <- 3
  
  options_UseFunction <- choose(n, k)
  
  options_UseFormula <- factorial(n) / (factorial(k) * factorial(n - k))
  
  # Print the result
  print(paste("The number of options to choose 3 players from 5 is (Use Function):", options_UseFunction))
  print(paste("The number of options to choose 3 players from 5 is (Use Formula):", options_UseFormula))

#---
  
# Practice 8 : The coach wants to choose three people from five basketball players:
# A, B, C, D, and E. Assign one defender, one striker and one center (-位後衛,一位前鋒和一位中鋒)from the three people.
# Use R to calculate how many options can be chose?
  
  # Calculate the number of combinations to choose 3 players from 5
  combinations <- choose(5, 3)
  
  # Calculate the number of ways to assign to 3 chosen players (從以上選出來的3個再求排列的可能)
  permutations <- factorial(3)
  
  # Total number of options
  total_options <- combinations * permutations
  
  # Print the result
  print(paste("The total number of options to assign roles is:", total_options))
  
  
  