//  🏔️ MTECH Code Challenge TP24: "Rock Paper Scissors"
//  Concept: Practice writing functions with game logic

//  Instructions:
    //  Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors", with one input for each player respectively.
    //  Determine who wins, and return a string saying which player won.

//  Examples:
    //  Input: "scissors", "paper"
    //  Output: "Player 1 won!"

    //  Input: "scissors", "rock"
    //  Output: "Player 2 won!"
    
    //  Input: "paper", "paper"
    //  Output: "Draw!"

//  ⌺ Black Diamond Challenge:
    //  Expand your game to include Spock and Lizard as weapon options. You can view the matchups here: 🔗https://www.samkass.com/theories/RPSSL.html

import Foundation

enum RockPaperScissors: String {
    case rock
    case paper
    case scissors
}

func rockPaperScissors(player1move: RockPaperScissors, player2move: RockPaperScissors) -> String {
    switch player1move {
    case .paper:
        if player2move == .paper { return "Its a tie!" }
        if player2move == .rock { return "Player 1 Wins!" }
        if player2move == .scissors { return "Player 2 Wins!" }
    case .rock:
        if player2move == .rock { return "Its a tie!" }
        if player2move == .scissors { return "Player 1 Wins!" }
        if player2move == .paper { return "Player 2 Wins!" }
    case .scissors:
        if player2move == .scissors { return "Its a tie!" }
        if player2move == .paper { return "Player 1 Wins!" }
        if player2move == .rock { return "Player 2 Wins!" }
    }
    return " "
}

print(rockPaperScissors(player1move: .scissors, player2move: .rock))
