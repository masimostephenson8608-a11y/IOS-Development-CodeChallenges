//  🏔️ MTECH Code Challenge ND11: "Case Comparison"
//  Concept: Practice creating extensions and comparing two variables with unique criteria

//  Instructions:
    //  Extend the Character type with a method that takes another Character as input and returns an Int as output.
    //  The method should check if the input character and the character the method is called on are the same case.
        //  If either of the characters is not a letter, return -1
        //  If both characters are the same case, return 1
        //  If both characters are letters, but not the same case, return 0

//  Examples:
    //  Input: Character("a").sameCaseAs(Character("b"))
    //  Output: 1

    //  Input: Character("C").sameCaseAs(Character("d"))
    //  Output: 0

    //  Input: Character("5").sameCaseAs(Character("f"))
    //  Output: -1

//  ⌺ Black Diamond Challenge:
    //  Make it so that your function does not rely on existing Character methods or properties (i.e., .isLowercase and .isUppercase).
    //  Use an enum as the return type instead of an Int.
    //  Add another method that will instead return the input character in the same case as self.

import Foundation

extension Character {
    func sameCaseAs(letter: Character) -> Int {
        if let number = letter.wholeNumberValue { return -1 }
        
        if self.isLowercase == letter.isLowercase || self.isUppercase == letter.isUppercase {
            return 1
        } else {
            return 0
        }
    }
}

let char: Character = "c"

print(char.sameCaseAs(letter: "C"))
print(char.sameCaseAs(letter: "D"))
print(char.sameCaseAs(letter: "d"))
print(char.sameCaseAs(letter: "4"))
