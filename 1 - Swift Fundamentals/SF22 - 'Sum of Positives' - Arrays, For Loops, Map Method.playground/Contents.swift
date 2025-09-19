//  🏔️ MTECH Code Challenge SF22: "Sum of Positives"
//  Concept: Practice iterating through an array using For Loops; instructor will introduce or review the map method as well

//  Instructions:
    // Create a function that takes an array of numbers, and returns the sum of all of the positives ones.

//  Notes:
    //  If there is nothing to sum, output 0.

//  Examples:
    //  Input: [1,-4,7,12]
    //  Math: 1 + 7 + 12 = 20
    //  Output: 20

//  ⌺ Black Diamond Challenge:
    //  Create a second function that instead returns two arrays, separating the positive and the negative numbers in the array. You can return it as an ([Int], [Int]) tuple, or as a custom structure holding both arrays.

import Foundation

func returnPositives(array: [Int]) -> Int {
    var sum: Int = 0
    for i in array {
        if i <= 0 {
            continue
        } else {
            sum += i
        }
    }
    return sum
}

func positivesAndNegatives(array: [Int]) -> (positives: Int, negatives: Int) {
    var positiveSum: Int = 0
    var negativeSum: Int = 0
    for i in array {
        if i <= 0 {
            negativeSum += i
        } else {
            positiveSum += i
        }
    }
    return (positiveSum, negativeSum)
}

let testArray = [-2, -3, 2, 3]
print(returnPositives(array: testArray))

print(positivesAndNegatives(array: testArray).negatives)
print(positivesAndNegatives(array: testArray))
