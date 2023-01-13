use rand::Rng;

fn main() {
    let mut rng = rand::thread_rng();
    let mut quit = false;

    while !quit {
        println!("Please select (r)ock, (p)aper, (s)cissors, or (q)uit:");
        let player_choice = get_player_choice();

        let computer_choice = rng.gen_range(1, 4);
        let computer_choice = match computer_choice {
            1 => "rock",
            2 => "paper",
            3 => "scissors",
            _ => unreachable!(),
        };

        let result = match (player_choice, computer_choice) {
            ("rock", "scissors") | ("paper", "rock") | ("scissors", "paper") => "You win!",
            ("rock", "rock") | ("paper", "paper") | ("scissors", "scissors") => "It's a tie!",
            _ => "You lose!",
        };

        println!("Computer chose {}. {}", computer_choice, result);
    }
}

fn get_player_choice() -> &'static str {
    let mut choice = String::new();
    std::io::stdin()
        .read_line(&mut choice)
        .expect("Failed to read player's choice");

    match choice.trim().to_lowercase().as_str() {
        "r" | "rock" => "rock",
        "p" | "paper" => "paper",
        "s" | "scissors" => "scissors",
        "q" | "quit" => {
            println!("Goodbye!");
            std::process::exit(0);
        }
        _ => {
            println!("Invalid choice, please try again");
            get_player_choice()
        }
    }
}

// To create a Rock-Paper-Scissors game in Rust, you can use the standard library to create the game logic and a command line interface (CLI) for the user to interact with. 
// 1. Use the rand::Rng trait to generate random numbers for the computer's selection.
// 2. Use a loop to repeatedly prompt the user for their selection and compare it to the computer's selection.
// 3. Use match statements to determine the winner and display the result to the user.
// 4. Use a boolean flag to exit the loop when the player chooses to quit the game.
