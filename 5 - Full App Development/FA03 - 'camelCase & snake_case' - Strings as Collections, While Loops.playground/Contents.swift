//  🏔️ MTECH Code Challenge SD03: "camelCase & snake_case" 🐫🐍
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create two functions toCamelCase() and toSnakeCase() that each take a single string and convert it into either camelCase or snake_case. If you're not sure what these terms mean, google it.

//  Notes:
    //  You can assume that the input will always be appropriately formatted as either camelCase or snake_case, depending on the function being called.

//  Examples:
    //  Input: toCamelCase("hello_edabit"), Output: "helloEdabit"
    //  Input: toSnakeCase("helloEdabit"), Output: "hello_edabit"
    //  Input: toCamelCase("is_modal_open"), Output: "isModalOpen"
    //  Input: toSnakeCase("getColor"), Output: "get_color"

//  ⌺ Black Diamond Challenge:
    //  Write another function that can identify whether a String is in camelCase or snake_case; use that function to sanitize your input to the other two functions.
    //  Write two more functions that convert a string into PascalCase and kebab-case, respectively.

import Foundation

func toCamelCase(string: String) -> String {
    var seperated = string.split(separator: "_")
    var uppercasedWords: [String] = []
    for word in seperated {
        if word == seperated.first {
            uppercasedWords.append(word.lowercased())
            continue
        } else {
            uppercasedWords.append(word.capitalized)
        }
    }
    var joined = uppercasedWords.joined()
    return joined
}

func to_snake_case(string: String) -> String {
    var result: [String] = []
    var currentWord = ""
    var newWords: [String] = []
        
    for character in string {
        if character.isUppercase && !currentWord.isEmpty {
            result.append(currentWord)
            currentWord = ""
            }
            currentWord += String(character)
        }
        
        if !currentWord.isEmpty {
            result.append(currentWord)
        }
    
    for words in result {
        if words == result.first {
            newWords.append(words)
            continue
        } else {
            newWords.append("_\(words.lowercased())")
        }
    }
        
    return newWords.joined()
}

print(toCamelCase(string: "hi_im_masi"))
print(to_snake_case(string: "snakeCase"))
