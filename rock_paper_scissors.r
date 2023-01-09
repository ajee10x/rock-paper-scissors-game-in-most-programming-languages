# The three possible moves in the game
moves <- c("rock", "paper", "scissors")

# Function to play a single match
play_match <- function(player1, player2) {
  if (player1 == player2) {
    return("It's a tie!")
  } else if (player1 == "rock" && player2 == "scissors") {
    return("Player 1 wins with rock!")
  } else if (player1 == "scissors" && player2 == "paper") {
    return("Player 1 wins with scissors!")
  } else if (player1 == "paper" && player2 == "rock") {
    return("Player 1 wins with paper!")
  } else {
    return("Player 2 wins!")
  }
}

# Play a single match
result <- play_match("rock", "scissors")
print(result)

# This implementation creates a vector called moves that contains the three possible moves in the game. It also defines a function called play_match() which takes two arguments: player1 and player2, both of which are strings representing the moves chosen by the players. The play_match() function returns a string indicating the result of the match.
# To play a single match, you can call the play_match() function and pass in the moves chosen by the players. The example above plays a single match with player1 choosing rock and player2 choosing scissors, and prints the result to the console.
