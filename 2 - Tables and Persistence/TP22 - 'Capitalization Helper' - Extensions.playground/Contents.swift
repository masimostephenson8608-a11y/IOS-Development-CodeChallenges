//  🏔️ MTECH Code Challenge TP22: "Capitalization Helper"
//  Concept: Practice creating simple extensions to add custom methods for standard types

//  Instructions:
    //  Your coworker was supposed to write a simple helper function to capitalize the first character of a string and lowercase the rest before they went on vacation.

    // Unfortunately, they have now left and the code they gave you doesn't work. Fix the helper function they wrote so that:
        //  It capitalizes the first character of the input string
        //  It does not require an input parameter, but mutates the string it is called on instead

//  Examples:
    //  Input: "clown Husbandry"
    //  Call: input.captializingOnlyFirst()
    //  Output: "Clown husbandry"

//  ⌺ Black Diamond Challenge:
    //  Add another function to String that cApItAlIzEs EvErY oThEr LeTtEr. Note that letters alternate capitaliztion between words, as well; spaces do not interrupt the pattern.

import Foundation

extension String {
    func capitalizeWord() -> String {
        self.first?.uppercased()
        self.lowercased()
        return self
    }
    
    func capitalizeEveryOtherLetter() -> String {
        var tracker = 0
        var string: String = ""
        for letter in self {
            if letter == " " {
                string.append(" ")
                continue
            }
            switch tracker {
            case 0:
                string.append(letter.uppercased())
                tracker += 1
                
            case 1:
                string.append(letter.lowercased())
                tracker -= 1
                
            default:
                continue
            }
        }
        return string
    }
}

print("Hi mama".capitalizeEveryOtherLetter())
