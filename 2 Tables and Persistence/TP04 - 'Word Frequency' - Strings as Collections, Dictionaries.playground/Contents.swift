//  🏔️ MTECH Code Challenge SF18: "Subset of an Array"
//  Concept: Practice accessing a set of data in an array that is not the entire array; practice using index subscripting

//  Instructions:
    //  Write a function that tells how many times a given word occurs in a string.
    //  The function should take in a string and return a dictionary with the frequency of each word.

//  Notes:
    //  You may assume the string will not contain any punctuation, but different capitalizations of a word should count as the same word.

//  Examples:
    //  Input: "Beware the Jabberwock my son The jaws that bite The claws that catch"
    //  Output: ["son": 1, "jabberwock": 1, "my": 1, "beware": 1, "jaws": 1, "that": 2, "the": 3, "claws": 1, "catch": 1, "bite": 1]

//  ⌺ Black Diamond Challenge:
    //  Change your function to allow for punctuation in the input string without causing words to be counted incorrectly.
    //  Order your output dictionary by frequency.

import Foundation

func occurence(sentence: String) -> [String: Int] {
    let sentenceArray = sentence.split(separator: " ")
    var result: [String: Int] = [:]
    for word in sentenceArray {
        if result[String(word.lowercased())] != nil {
            result[String(word.lowercased())] = result[String(word.lowercased())]! + 1
        } else {
            result[String(word.lowercased())] = 1
        }
    }
    return result
}

print(occurence(sentence: "Beware the Jabberwock my son The jaws that bite The claws that catch"))
