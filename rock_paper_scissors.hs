import System.Random (randomRIO)

-- data type for the moves
data Move = Rock | Paper | Scissors
  deriving (Eq, Show)

-- function to get the computer's move
getComputerMove :: IO Move
getComputerMove = do
  move <- randomRIO (1, 3) :: IO Int
  case move of
    1 -> return Rock
    2 -> return Paper
    3 -> return Scissors

-- function to get the winner of the game
getWinner :: Move -> Move -> String
getWinner playerMove computerMove
  | playerMove == computerMove = "draw"
  | playerMove == Rock && computerMove == Scissors = "player"
  | playerMove == Paper && computerMove == Rock = "player"
  | playerMove == Scissors && computerMove == Paper = "player"
  | otherwise = "computer"

-- main function to play the game
playGame :: IO ()
playGame = do
  putStrLn "Enter your move (rock, paper, scissors):"
  playerMove <- getLine -- read the player's move from the standard input
  let playerMove' = read playerMove :: Move -- parse the player's move
  computerMove <- getComputerMove
  putStrLn $ "Computer's move: " ++ show computerMove
  let winner = getWinner playerMove' computerMove
  putStrLn $ case winner of
    "draw" -> "It's a draw!"
    "player" -> "You win!"
    "computer" -> "Computer wins!"

-- play the game
main :: IO ()
main = playGame

-- This implementation has a data type Move to represent the possible moves (rock, paper, scissors), and three functions: getComputerMove generates a random move for the computer, getWinner determines the winner of the game based on the player's and computer's moves, and playGame is the main function that handles the gameplay. The player's move is read from the standard input and parsed into a Move value, the computer's move is generated using the getComputerMove function, and the winner is determined using the getWinner function. Finally, the result of the game is printed to the console.
