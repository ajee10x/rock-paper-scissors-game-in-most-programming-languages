# Welcome the player to the game
puts "Welcome to Rock, Paper, Scissors!"

# Define the choices
choices = ["rock", "paper", "scissors"]

# Prompt the player to make a choice
puts "Please choose one: rock, paper, or scissors"
player_choice = gets.chomp.downcase

# Validate the player's choice
until choices.include?(player_choice)
  puts "Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors"
  player_choice = gets.chomp.downcase
end

# Generate the computer's choice
computer_choice = choices.sample

# Determine the winner
if player_choice == computer_choice
  puts "It's a tie!"
elsif player_choice == "rock" && computer_choice == "scissors"
  puts "You win! Rock beats scissors."
elsif player_choice == "paper" && computer_choice == "rock"
  puts "You win! Paper beats rock."
elsif player_choice == "scissors" && computer_choice == "paper"
  puts "You win! Scissors beats paper."
else
  puts "You lose. #{computer_choice.capitalize} beats #{player_choice}."
end

# To play the game, save the code to a file (e.g. rock_paper_scissors.rb) and run it with the ruby command in your terminal
# ruby rock_paper_scissors.rb
