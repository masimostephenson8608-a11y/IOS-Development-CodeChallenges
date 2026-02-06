//  🏔️ MTECH Code Challenge SD05: "String Chopper"
//  Concept: Practice using a string as a collection, evaluating and modifying it as needed

//  Instructions:
    //  Create a function that accepts str and cases as parameters where the string is split into N distinct cases of equal length as shown below

//  Examples:
    //  Input: splitNCases("Strengthened", 6), Output: ["St", "re", "ng", "th", "en", "ed"]
    //  Input: splitNCases("Unscrupulous", 2), Output: ["Unscru", "pulous"]
    //  Input: splitNCases("Flavorless", 1), Output: ["Flavorless"]

//  Notes:
    //  If it's not possible to split the string as described, return nil.

//  ⌺ Black Diamond Challenge:
    //  Write another function that will split the string even if it is not evenly divisible.
    //  Input: splitNCasesUnevenly("Characters", 3), Output: ["Cha", "rac", "ters"]

import Foundation

func splitNCases(string: String, n: Int) -> [String] {
    let characterCount = string.count / n
    var strings: [String] = []
    var repeatCount = 0
    repeat {
        let beginning = string.index(string.startIndex, offsetBy: characterCount * repeatCount)
        let end: String.Index
        if repeatCount == n - 1 {
            end = string.endIndex
        } else {
            end = string.index(beginning, offsetBy: characterCount)
        }
        let currentPart = string[beginning..<end]
        strings.append(String(currentPart))
        repeatCount += 1
    } while strings.count != n
    return strings
}

print(splitNCases(string: "NEVERRRRR", n: 4))
