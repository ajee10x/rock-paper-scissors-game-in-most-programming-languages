package main

import (
	"fmt"
	"math/rand"
	"strings"
	"time"
)

func main() {
	// Welcome the player to the game
	fmt.Println("Welcome to Rock, Paper, Scissors!")

	// Define the choices
	choices := []string{"rock", "paper", "scissors"}

	// Prompt the player to make a choice
	var playerChoice string
	fmt.Print("Please choose one: rock, paper, or scissors ")
	fmt.Scanln(&playerChoice)
	playerChoice = strings.ToLower(playerChoice)

	// Validate the player's choice
	for !contains(choices, playerChoice) {
		fmt.Println("Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors")
		fmt.Print("Please choose one: rock, paper, or scissors ")
		fmt.Scanln(&playerChoice)
		playerChoice = strings.ToLower(playerChoice)
	}

	// Generate the computer's choice
	rand.Seed(time.Now().UnixNano())
	computerChoice := choices[rand.Intn(len(choices))]

	// Determine the winner
	if playerChoice == computerChoice {
		fmt.Println("It's a tie!")
	} else if playerChoice == "rock" && computerChoice == "scissors" {
		fmt.Println("You win! Rock beats scissors.")
	} else if playerChoice == "paper" && computerChoice == "rock" {
		fmt.Println("You win! Paper beats rock.")
	} else if playerChoice == "scissors" && computerChoice == "paper" {
		fmt.Println("You win! Scissors beats paper.")
	} else {
		fmt.Printf("You lose. %s beats %s.\n", computerChoice, playerChoice)
	}
}

func contains(choices []string, choice string) bool {
	for _, c := range choices {
		if c == choice {
			return true
		}
	}
	return false
}

// To play the game, save the code to a file (e.g. main.go) and run it with the go run command in your terminal
// go run main.go
