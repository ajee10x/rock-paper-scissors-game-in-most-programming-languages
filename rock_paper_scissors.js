// Welcome the player to the game
console.log("Welcome to Rock, Paper, Scissors!");

// Define the choices
const choices = ["rock", "paper", "scissors"];

// Prompt the player to make a choice
const playerChoice = prompt("Please choose one: rock, paper, or scissors");

// Validate the player's choice
while (!choices.includes(playerChoice)) {
  console.log("Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors");
  playerChoice = prompt("Please choose one: rock, paper, or scissors");
}

// Generate the computer's choice
const computerChoice = choices[Math.floor(Math.random() * choices.length)];

// Determine the winner
if (playerChoice === computerChoice) {
  console.log("It's a tie!");
} else if (playerChoice === "rock" && computerChoice === "scissors") {
  console.log("You win! Rock beats scissors.");
} else if (playerChoice === "paper" && computerChoice === "rock") {
  console.log("You win! Paper beats rock.");
} else if (playerChoice === "scissors" && computerChoice === "paper") {
  console.log("You win! Scissors beats paper.");
} else {
  console.log(`You lose. ${computerChoice.charAt(0).toUpperCase() + computerChoice.slice(1)} beats ${playerChoice}.`);
}
// To play the game, open the console in your browser (usually by pressing F12) and paste in the code. Then press Enter to run it.
