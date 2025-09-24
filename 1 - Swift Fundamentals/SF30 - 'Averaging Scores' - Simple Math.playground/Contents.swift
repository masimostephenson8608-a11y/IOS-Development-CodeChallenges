//  🏔️ MTECH Code Challenge SF30: "Averaging Scores"
//  Concept: Practice calculating the average of numbers in an array and rounding down the result

//  Instructions:
    //  It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.
    //  Return the average of the given array rounded down to its nearest integer.

//  Notes:
    //  The array will never be empty.

//  Examples:
    //  Input: array: [90, 80, 70, 60, 50]
    //  Output: 70

    //  Input: array: [1, 2, 3, 4, 5]
    //  Output: 3

//  ⌺ Black Diamond Challenge:
    //  Create a function that not only calculates the average and rounds down, but also returns the highest and lowest values in the array.

import Foundation

func avg(array: [Double]) -> Int {
    if array.isEmpty {
        return 0
    }
    let sumArray = array.reduce(0) { $0 + $1 }
    return Int(round(sumArray / Double(array.count)))
}

let testArray: [Double] = [1, 2, 3, 4, 5]
let testArray2: [Double] = [90, 80, 70, 60, 50]
print(avg(array: testArray))
print(avg(array: testArray2))

