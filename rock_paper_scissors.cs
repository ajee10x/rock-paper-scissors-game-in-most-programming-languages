using System;

namespace RockPaperScissors
{
    class Program
    {
        static void Main(string[] args)
        {
            // Random number generator to determine the computer's choice
            Random rng = new Random();

            // The choices
            const int ROCK = 1;
            const int PAPER = 2;
            const int SCISSORS = 3;

            // Player's choice
            Console.WriteLine("Rock, paper, or scissors?");
            string choice = Console.ReadLine().ToLower();

            // Determine the player's choice
            int playerChoice;
            if (choice == "rock")
            {
                playerChoice = ROCK;
            }
            else if (choice == "paper")
            {
                playerChoice = PAPER;
            }
            else if (choice == "scissors")
            {
                playerChoice = SCISSORS;
            }
            else
            {
                Console.WriteLine("Invalid choice");
                return;
            }

            // Computer's choice
            int computerChoice = rng.Next(1, 4);

            // Determine the winner
            if (playerChoice == computerChoice)
            {
                Console.WriteLine("It's a tie!");
            }
            else if (playerChoice == ROCK && computerChoice == SCISSORS ||
                     playerChoice == PAPER && computerChoice == ROCK ||
                     playerChoice == SCISSORS && computerChoice == PAPER)
            {
                Console.WriteLine("You win!");
            }
            else
            {
                Console.WriteLine("Computer wins!");
            }
        }
    }
}

// This program allows the player to enter their choice (rock, paper, or scissors), and then generates the computer's choice randomly. It then determines the winner based on the standard rock-paper-scissors rules.
