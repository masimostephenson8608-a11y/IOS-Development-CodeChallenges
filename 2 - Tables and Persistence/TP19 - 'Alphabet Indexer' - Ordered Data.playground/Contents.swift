//  🏔️ MTECH Code Challenge TP19: "Alphabet Indexer"
//  Concept: Practice storing and evaluating a custom dataset

//  Instructions:
    //  When provided with a letter, return its position in the English alphabet.
    //  Your code should either throw an error, return nil, or fail to compile if something other than a single letter is provided.

//  Examples:
    //  Input: "a"
    //  Output: 1

//  Notes:
    //  Your code should be case insensitive.

//  ⌺ Black Diamond Challenge:
    //  Extend the functionality to handle strings with multiple characters. For such strings, return the sum of the positions of all the letters in the string. If any non-letter characters are present, throw an error, return nil, or fail to compile.
    //  Rewrite your function to not rely on using a literal array for the alphabet. (In other words, the alphabet itself should not appear in your function.)

import Foundation

func returnPositionInAlphabet(Letter: Character) -> Int? {
    let abc = [
            "a", "b", "c", "d", "e", "f", "g", "h",
               "i", "j", "k", "l", "m", "n", "o", "p",
               "q", "r", "s", "t", "u", "v", "w", "x",
               "y", "z"
    ]
    guard abc.contains(Letter.lowercased()) else { return nil }
    for (index, output) in abc.enumerated() {
        if Letter.lowercased() == output {
            return index + 1
        }
    }
    return nil
}

if let Idk = returnPositionInAlphabet(Letter: "B") {
    print(Idk)
}
