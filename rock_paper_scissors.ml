(* Define the game options *)
type hand = Rock | Paper | Scissors

(* Function to get the player's choice *)
let rec get_choice () =
  print_endline "Please choose (rock, paper, scissors): ";
  match read_line () with
  | "rock" -> Rock
  | "paper" -> Paper
  | "scissors" -> Scissors
  | _ -> get_choice ()

(* Function to determine the winner of the round *)
let winner (p1: hand) (p2: hand) : hand =
  match p1, p2 with
  | Rock, Scissors
  | Paper, Rock
  | Scissors, Paper -> p1
  | _, _ -> p2

(* Main function to play the game *)
let rec play_game () =
  let player1 = get_choice () in
  let player2 = get_choice () in
  let result = winner player1 player2 in
  match result with
  | Rock -> print_endline "Rock wins!"
  | Paper -> print_endline "Paper wins!"
  | Scissors -> print_endline "Scissors wins!"
  play_game ();

(* Start the game *)
let () = play_game ()


(* This code defines the game options (rock, paper, and scissors) as a variant type hand.
The function get_choice prompts the player to enter their choice and returns their choice as a value of type hand.
The function winner takes two arguments of type hand and returns the winner of the round as a value of type hand
The main function play_game calls the get_choice function twice to get the choices of the two players, calls the winner function to determine the winner of the round, and then prints the result. The function is called recursively, so the game can be played multiple rounds.

 *)
