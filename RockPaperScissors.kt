import java.util.*

fun main() {
    // Welcome the player to the game
    println("Welcome to Rock, Paper, Scissors!")

    // Define the choices
    val choices = arrayOf("rock", "paper", "scissors")

    // Prompt the player to make a choice
    print("Please choose one: rock, paper, or scissors ")
    var playerChoice = readLine()!!.toLowerCase()

    // Validate the player's choice
    while (playerChoice != "rock" && playerChoice != "paper" && playerChoice != "scissors") {
        println("Sorry, that's not a valid choice. Please choose one: rock, paper, or scissors")
        print("Please choose one: rock, paper, or scissors ")
        playerChoice = readLine()!!.toLowerCase()
    }

    // Generate the computer's choice
    val rand = Random()
    val computerChoice = choices[rand.nextInt(choices.size)]

    // Determine the winner
    if (playerChoice == computerChoice) {
        println("It's a tie!")
    } else if (playerChoice == "rock" && computerChoice == "scissors") {
        println("You win! Rock beats scissors.")
    } else if (playerChoice == "paper" && computerChoice == "rock") {
        println("You win! Paper beats rock.")
    } else if (playerChoice == "scissors" && computerChoice == "paper") {
        println("You win! Scissors beats paper.")
    } else {
        println("You lose. " + computerChoice.capitalize() + " beats " + playerChoice + ".")
    }
}

fun String.capitalize() = this[0].toUpperCase() + this.substring(1)

// To play the game, save the code to a file (e.g. RockPaperScissors.kt) and run it with the kotlin command in your terminal
// kotlin RockPaperScissors.kt 
