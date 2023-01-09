# Welcome the player to the game
print("Welcome to Rock, Paper, Scissors!")

# Define the choices
choices = ["rock", "paper", "scissors"]

# Prompt the player to make a choice
player_choice = input("Please choose one: rock, paper, or scissors ").lower()

# Validate the player's choice
while player_choice not in choices:
  print("Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors")
  player_choice = input("Please choose one: rock, paper, or scissors ").lower()

# Generate the computer's choice
import random
computer_choice = random.choice(choices)

# Determine the winner
if player_choice == computer_choice:
  print("It's a tie!")
elif player_choice == "rock" and computer_choice == "scissors":
  print("You win! Rock beats scissors.")
elif player_choice == "paper" and computer_choice == "rock":
  print("You win! Paper beats rock.")
elif player_choice == "scissors" and computer_choice == "paper":
  print("You win! Scissors beats paper.")
else:
  print(f"You lose. {computer_choice.capitalize()} beats {player_choice}.")

# To play the game, save the code to a file (e.g. rock_paper_scissors.py) and run it with the python command in your terminal
# python rock_paper_scissors.py
