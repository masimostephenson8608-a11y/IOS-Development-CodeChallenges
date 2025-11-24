//  🏔️ MTECH Code Challenge ND07: "Difference Sums"
//  Concept: Practice sorting arrays and performing mathematical operations on them

//  Instructions:
    //  Create a function that takes an array of integers as input and returns an integer.
    //  Your task is to sum the differences between consecutive pairs. Find the absolute difference between each consecutive pair in the array (e.g., if the order is 2, 10, then the absolute difference would be 8, instead of the normal difference, -8.) Output the sum of the absolute differences.

//  Examples:
    //  Input: [2, 1, 10]
    //  Logic:
        //  Find differences: 2 - 1 = 1, 1 - 10 = -9 (so absolute difference is 9)
        //  Sum differences: 1 + 9 = 10
    //  Output: 10

//  Notes:
    //  If the array is empty or only has one element, the result should be 0.

//  ⌺ Black Diamond Challenge:
    //  Calculate and return the average difference as well.

import Foundation

func findTotalDifferences(numbers: [Int]) -> (Int, Int) {
    guard !numbers.isEmpty else { return (0,0) }
    var differences: [Int] = []
    for (index, _) in numbers.enumerated() {
        if index + 1 != numbers.count {
            var difference = numbers[index] - numbers[index + 1]
            if difference < 0 {
                difference = difference * -1
            }
            differences.append(difference)
        }
    }
    let totalDifference = differences.reduce(0) { $0 + $1 }
    let avgDifference = totalDifference / differences.count
    print("""
    Total Difference: \(totalDifference)
    Average Difference: \(avgDifference)
    """)
    return (totalDifference, avgDifference)
}

findTotalDifferences(numbers: [2, 1, 10])
