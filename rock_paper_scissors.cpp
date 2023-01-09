#include <iostream>
#include <string>
#include <random>

int main() {
    // Random number generator to determine the computer's choice
    std::mt19937 rng(std::random_device{}());
    std::uniform_int_distribution<int> dist(1, 3);
    
    // The choices
    const int ROCK = 1;
    const int PAPER = 2;
    const int SCISSORS = 3;
    
    // Player's choice
    std::cout << "Rock, paper, or scissors?" << std::endl;
    std::string choice;
    std::cin >> choice;
    
    // Determine the player's choice
    int playerChoice;
    if (choice == "rock") {
        playerChoice = ROCK;
    } else if (choice == "paper") {
        playerChoice = PAPER;
    } else if (choice == "scissors") {
        playerChoice = SCISSORS;
    } else {
        std::cout << "Invalid choice" << std::endl;
        return 0;
    }
    
    // Computer's choice
    int computerChoice = dist(rng);
    
    // Determine the winner
    if (playerChoice == computerChoice) {
        std::cout << "It's a tie!" << std::endl;
    } else if (playerChoice == ROCK && computerChoice == SCISSORS ||
               playerChoice == PAPER && computerChoice == ROCK ||
               playerChoice == SCISSORS && computerChoice == PAPER) {
        std::cout << "You win!" << std::endl;
    } else {
        std::cout << "Computer wins!" << std::endl;
    }
    
    return 0;
}

// This program works in a similar way to the C# and C versions. It prompts the player to enter their choice, and then generates the computer's choice randomly using a mt19937 generator. It then determines the winner based on the standard rock-paper-scissors rules.
