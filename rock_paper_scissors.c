#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char** argv) {
    // Random number generator to determine the computer's choice
    srand(time(0));
    
    // The choices
    const int ROCK = 1;
    const int PAPER = 2;
    const int SCISSORS = 3;
    
    // Player's choice
    printf("Rock, paper, or scissors?\n");
    char choice[10];
    scanf("%s", choice);
    
    // Determine the player's choice
    int playerChoice;
    if (strcmp(choice, "rock") == 0) {
        playerChoice = ROCK;
    } else if (strcmp(choice, "paper") == 0) {
        playerChoice = PAPER;
    } else if (strcmp(choice, "scissors") == 0) {
        playerChoice = SCISSORS;
    } else {
        printf("Invalid choice\n");
        return 0;
    }
    
    // Computer's choice
    int computerChoice = rand() % 3 + 1;
    
    // Determine the winner
    if (playerChoice == computerChoice) {
        printf("It's a tie!\n");
    } else if (playerChoice == ROCK && computerChoice == SCISSORS ||
               playerChoice == PAPER && computerChoice == ROCK ||
               playerChoice == SCISSORS && computerChoice == PAPER) {
        printf("You win!\n");
    } else {
        printf("Computer wins!\n");
    }
    
    return 0;
}

// This program works in a similar way to the C# version. It prompts the player to enter their choice, and then generates the computer's choice randomly. It then determines the winner based on the standard rock-paper-scissors rules.

