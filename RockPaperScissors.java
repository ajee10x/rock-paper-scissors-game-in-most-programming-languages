import java.util.Random;
import java.util.Scanner;

public class RockPaperScissors {
  public static void main(String[] args) {
    // Welcome the player to the game
    System.out.println("Welcome to Rock, Paper, Scissors!");

    // Define the choices
    String[] choices = {"rock", "paper", "scissors"};

    // Prompt the player to make a choice
    Scanner scanner = new Scanner(System.in);
    System.out.print("Please choose one: rock, paper, or scissors ");
    String playerChoice = scanner.nextLine().toLowerCase();

    // Validate the player's choice
    while (!playerChoice.equals("rock") && !playerChoice.equals("paper") && !playerChoice.equals("scissors")) {
      System.out.println("Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors");
      System.out.print("Please choose one: rock, paper, or scissors ");
      playerChoice = scanner.nextLine().toLowerCase();
    }

    // Generate the computer's choice
    Random rand = new Random();
    String computerChoice = choices[rand.nextInt(choices.length)];

    // Determine the winner
    if (playerChoice.equals(computerChoice)) {
      System.out.println("It's a tie!");
    } else if (playerChoice.equals("rock") && computerChoice.equals("scissors")) {
      System.out.println("You win! Rock beats scissors.");
    } else if (playerChoice.equals("paper") && computerChoice.equals("rock")) {
      System.out.println("You win! Paper beats rock.");
    } else if (playerChoice.equals("scissors") && computerChoice.equals("paper")) {
      System.out.println("You win! Scissors beats paper.");
    } else {
      System.out.println("You lose. " + computerChoice.substring(0, 1).toUpperCase() + computerChoice.substring(1) + " beats " + playerChoice + ".");
    }
  }
}

// To play the game, save the code to a file (e.g. RockPaperScissors.java) and compile it with the javac command in your terminal
// javac RockPaperScissors.java
