import Foundation

// The three possible moves in the game
enum Move: String {
    case rock = "rock"
    case paper = "paper"
    case scissors = "scissors"
}

// The `Match` class represents a single match in the game
class Match {
    let player1: Move
    let player2: Move
    
    init(player1: Move, player2: Move) {
        self.player1 = player1
        self.player2 = player2
    }
    
    func winner() -> String? {
        if player1 == player2 {
            return "It's a tie!"
        } else if player1 == .rock && player2 == .scissors {
            return "Player 1 wins with rock!"
        } else if player1 == .scissors && player2 == .paper {
            return "Player 1 wins with scissors!"
        } else if player1 == .paper && player2 == .rock {
            return "Player 1 wins with paper!"
        } else {
            return "Player 2 wins!"
        }
    }
}

// Play a single match
let match = Match(player1: .rock, player2: .scissors)
let result = match.winner()
print(result)

// This implementation defines an enum called Move that represents the three possible moves in the game (rock, paper, and scissors). It also defines a Match class that has two properties: player1 and player2, both of which are of type Move. The Match class has a single method called winner() which returns a string indicating the result of the match.
// To play a single match, you can create a new Match object and call the winner() method on it. The example above plays a single match with player1 choosing rock and player2 choosing scissors, and prints the result to the console.
