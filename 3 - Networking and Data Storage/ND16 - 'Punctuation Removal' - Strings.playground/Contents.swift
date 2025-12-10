//  🏔️ MTECH Code Challenge ND16: "Punctuation Removal"
//  Concept: Practice manipulating a string

//  Instructions:
    //  Remove any punctuation mark from the end of a string.
    //  If the string ends with a punctuation mark (e.g., '.', ',', '!', '?', ';', ':', '-', '_'), remove only the last occurrence of such a mark.
    //  If the input string is empty, return an empty string.

//  Examples:
    //  Input: "Greetings, friends!!"
    //  Output: "Greetings, friends!"

    //  Input: "Wow."
    //  Output: "Wow"

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, remove all leading and trailing punctuation, including multiples.
    //  Input: "...This is a good example!!!", Output: "This is a good example"

import Foundation

func removePunctuation(string: String) -> String {
    var changeableString = string
    guard !string.isEmpty else { return "" }
    while changeableString.last == " " {
        if changeableString.last == " " {
            changeableString.removeLast()
        } else {
            break
        }
    }
    if changeableString.last == "." || changeableString.last == "!" ||
        changeableString.last == "?" || changeableString.last == "," ||
        changeableString.last == ";" || changeableString.last == ":" ||
        changeableString.last == "-" || changeableString.last == "_" {
        changeableString.removeLast()
    }
    return changeableString
}

print(removePunctuation(string: "Masimo! ! "))
