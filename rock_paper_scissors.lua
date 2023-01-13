-- function to get the computer's move
function get_computer_move()
  local move = math.random(1, 3) -- generate a random number between 1 and 3
  if move == 1 then
    return "rock"
  elseif move == 2 then
    return "paper"
  else
    return "scissors"
  end
end

-- function to get the winner of the game
function get_winner(player_move, computer_move)
  if player_move == computer_move then
    return "draw"
  elseif player_move == "rock" and computer_move == "scissors" then
    return "player"
  elseif player_move == "paper" and computer_move == "rock" then
    return "player"
  elseif player_move == "scissors" and computer_move == "paper" then
    return "player"
  else
    return "computer"
  end
end

-- main function to play the game
function play_game()
  -- get the player's move
  print("Enter your move (rock, paper, scissors):")
  local player_move = io.read() -- read the player's move from the standard input

  -- get the computer's move
  local computer_move = get_computer_move()
  print("Computer's move: " .. computer_move)

  -- get the winner of the game
  local winner = get_winner(player_move, computer_move)
  if winner == "draw" then
    print("It's a draw!")
  elseif winner == "player" then
    print("You win!")
  else
    print("Computer wins!")
  end
end

-- play the game
play_game()

-- This implementation has three functions: get_computer_move generates a random move for the computer (rock, paper, or scissors), get_winner determines the winner of the game based on the player's and computer's moves, and play_game is the main function that handles the gameplay. The player's move is read from the standard input, the computer's move is generated using the get_computer_move function, and the winner is determined using the get_winner function. Finally, the result of the game is printed to the console..
