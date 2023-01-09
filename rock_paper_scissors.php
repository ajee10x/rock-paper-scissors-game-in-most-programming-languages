<?php

// Welcome the player to the game
echo "Welcome to Rock, Paper, Scissors!\n";

// Define the choices
$choices = ['rock', 'paper', 'scissors'];

// Prompt the player to make a choice
echo "Please choose one: rock, paper, or scissors ";
$playerChoice = strtolower(trim(fgets(STDIN)));

// Validate the player's choice
while (!in_array($playerChoice, $choices)) {
  echo "Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors ";
  $playerChoice = strtolower(trim(fgets(STDIN)));
}

// Generate the computer's choice
$computerChoice = $choices[array_rand($choices)];

// Determine the winner
if ($playerChoice == $computerChoice) {
  echo "It's a tie!\n";
} else if ($playerChoice == 'rock' && $computerChoice == 'scissors') {
  echo "You win! Rock beats scissors.\n";
} else if ($playerChoice == 'paper' && $computerChoice == 'rock') {
  echo "You win! Paper beats rock.\n";
} else if ($playerChoice == 'scissors' && $computerChoice == 'paper') {
  echo "You win! Scissors beats paper.\n";
} else {
  echo "You lose. $computerChoice beats $playerChoice.\n";
}

// To play the game, save the code to a file (e.g. rock_paper_scissors.php) and run it with the php command in your terminal
// php rock_paper_scissors.php

?>
