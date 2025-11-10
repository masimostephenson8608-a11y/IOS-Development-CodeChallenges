//  🏔️ MTECH Code Challenge TP25: "Rock Paper Scissors 2.0"
//  Concept: Add custom randomization to a function. Black Diamond: Parse arrays.

//  Instructions:
    //  Create a function that takes in a string as input. This is the users move (either rock, paper, or scissors).
    //  Randomly decide what the computers choice is.
    //  Return a string which declares the winner.

//  Examples:
    //  Input: "rock"
    //  Output: "I chose paper. You lose!"
    //  Output: "I chose rock. Draw! Go again?"
    //  Output: "I chose scissors. I lose."

//  ⌺ Black Diamond Challenge:
    //  Create another function that instead accepts an array as input. If only one move is entered, generate a random one for the computer; if two are entered, compare them.
    //  If more than two moves are input, the winners are the players who voted for the most popular move.

import Foundation


enum RockPaperScissors {
    case rock
    case paper
    case scissors
}

func rockPaperScissors(player1move: RockPaperScissors) -> String {
    var string: String = "I chose \(player1move), "
    var randomNum = Int.random(in: 1...3)
    var compMove: RockPaperScissors
    switch randomNum {
    case 1:
        compMove = .rock
    case 2:
        compMove = .paper
    case 3:
        compMove = .scissors
    default:
        compMove = .rock
    }
    switch player1move {
    case .paper:
        if compMove == .paper { string += "Its a tie!" }
        if compMove == .rock { string += "Player 1 Wins!" }
        if compMove == .scissors { string += "Player 2 Wins!" }
    case .rock:
        if compMove == .rock { string += "Its a tie!" }
        if compMove == .scissors { string += "Player 1 Wins!" }
        if compMove == .paper { string += "Player 2 Wins!" }
    case .scissors:
        if compMove == .scissors { string += "Its a tie!" }
        if compMove == .paper { string += "Player 1 Wins!" }
        if compMove == .rock { string += "Player 2 Wins!" }
    }
    return string
}

print(rockPaperScissors(player1move: .paper))
