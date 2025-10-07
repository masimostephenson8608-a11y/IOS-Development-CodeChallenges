//  🏔️ MTECH Code Challenge TP01: "Reverse Alphabetical"
//  Concept: Practice manipulating arrays; learn basic built-in Swift methods that you'll use every day

//  Instructions:
    //  Alphabetically reverse sort an array of strings.

//  Examples:
    //  Input: ["Bob", "Jill", "Sally"], Output: ["Sally", "Jill", "Bob"]
    //  Input: ["Vern", "Gidget", "Zeb"], Output: ["Zeb", "Vern", "Gidget"]

//  ⌺ Black Diamond Challenge:
    //  Create another function. This time, sort every word's letters reverse alphabetically, then sort all words in the array. You do not need to retain the case of the characters.
    //  Input: ["Bob", "Jill", "Sally"]
    //  Output: ["llji", "obb", "yslla"]

import Foundation

func reverseSort(array: [String]) -> [String] {
    var funcArray: [String] = []

    for letters in 0..<array.count - 1 {
        funcArray.append(array[letters])

    }
    for _ in 0..<funcArray.count {
        for count in 0..<funcArray.count - 1 {
            if let firstLetter = funcArray[count].first?.lowercased(), let secondLetter = funcArray[count + 1].first?.lowercased() {
                if firstLetter < secondLetter {
                    funcArray.swapAt(count, count + 1)
                }
            }
        }
    }
    return funcArray
}
let testArray = ["Ava Serrano",
                 "Miles Thornton",
                " Jade Kimura",
                 "Liam Navarro",
                 "Elena Brooks",
                 "Theo Raines",
                 "Sienna Clarke",
                 "Kai Donovan",
                 "Amara Holt",
                 "Felix Zhang",
                 "Nora Castillo",
                 "Luca Bennett",
                 "Iris Vaughn",
                 "Leo McAllister",
                 "Zara Flynn",
                 "Elias Monroe",
                 "Freya Patel",
                 "Declan Ruiz",
                 "Mina Alcott",
                 "Rowan Pierce",
                 "Kaelith Dorne",
                 "Lyra Solen",
                ]
print(reverseSort(array: testArray))
