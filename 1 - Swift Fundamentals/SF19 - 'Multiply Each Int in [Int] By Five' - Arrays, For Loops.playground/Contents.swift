//  🏔️ MTECH Code Challenge SF10: "Name, Age, and Pi"
//  Concept: Practice looping over arrays

//  Instructions:
    //  Create a function that takes in an array of Int's as a parameter
    //  You will need to multiply each Int in the array by 5.
    //  The function will return the array of new Ints.

//  ⌺ Black Diamond Challenge:
    //  Create a second function for the same purpose. Return an array of Ints without using a for loop. (This will require a special method -- look it up!)

import Foundation

func multiplyByFive(array: Array<Int>) -> Array<Int> {
    var newArray: [Int] = []
    var newValue:Int
    for i in 0...array.count - 1 {
        newValue = array[i] * 5
        newArray.append(newValue)
    }
    return newArray
}

func sameFunction (array: Array<Int>) -> Array<Int> {
    let newArray = array.map {$0 * 5}
    return newArray
}

let testArray = [1, 3, 5, 7, 9, 11, 13]

let firstArray = multiplyByFive(array: testArray)
let secondArray = sameFunction(array: testArray)

print(firstArray, secondArray)
