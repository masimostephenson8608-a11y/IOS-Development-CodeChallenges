//  🏔️ MTECH Code Challenge SF12: "Complete the Square"
//  Concept: Solve simple math problems while working with arrays and loops

//  Instructions:
//      Create a function called completeTheSquare.
//      The function will take an array of ints and will return a single int
//      The function should A) square each number in the array, and then B) add the total of all squared numbers together.

//  Examples:
//    Input:
//      [1, 2, 2]
//    Math:
//      [1^2, 2^2, 2^2]
//      1^2 + 2^2 + 2^2
//    Output:
//      9

//  ⌺ Black Diamond Challenge:
//      Add a new function with the same name but one more parameter, exponent. Raise each number in the array by the given exponent, then return the sum.

import Foundation

func completeTheSquare(array: [Int]) -> Int {
    var newArray: [Int] = []
    for i in array {
        newArray.append(i * i)
    }
    return newArray.reduce(0) {$0 + $1}
}

func blackDiamond(array: [Int], _ exponent: Int) -> Int {
    let newArray = array.map {powl(Double($0), Double(exponent))}
    var intArray: [Int] = []
    for i in newArray {
        intArray.append(Int(i))
    }
    return intArray.reduce(0) {$0 + $1}
}

let testArray = [2, 4, 6, 8]
print(completeTheSquare(array: testArray))
print("Next:")
print(blackDiamond(array: testArray, 2))

