# ---
# Practice 5
# ---

# '''

# This practical exercise demonstrates how to efficiently generate 
# a standard 52-card playing deck using R's vector operations, specifically 
# leveraging the rep() and paste() functions to systematically combine card suits 
# with their values in a clean, maintainable solution.

# '''

# First, create the card suits vector
cardsuit <- c("Spades", "Hearts", "Diamonds", "Clubs")

# Create vectors for card values
# We need numbers 2-10, face cards (J,Q,K), and Ace
card_values <- c("A", 2:10 , "J", "Q", "K")

# Generate the complete deck using rep() and paste() functions
# rep(cardsuit, each=13): Repeats each suit 13 times to match with card values
# paste(): Combines the repeated suits with their corresponding values
# The resulting vector contains all 52 unique card combinations
deck <- paste(rep(cardsuit, each=13), card_values)

# Print the result
print(deck)

# ---
# Test
# ---

# 1.
x<-c("Hello R World")
strsplit(x,"")

# 2.
x<-c("Hello R World")
tolower(x)

#3.
x<-c("Hello","R","World")
paste(x,collapse="***")

# 4.
x<-c("Hello","R","World")
paste("My",x,sep="-")

# 5.
x<-c("Hello","R","World")
y<-letters[1:3]
paste("My",y,x,sep="-")

# 6.7. 8. 9. 10.
x1<-c(1,2,3,4,5)
x2<-letters[1:5]
paste(rep(x1, each=2), x2, sep="")
