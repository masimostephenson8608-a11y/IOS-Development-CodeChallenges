//  🏔️ MTECH Code Challenge ND20: "Sum the Smallest"
//  Concept: Practice sorting and manipulating arrays.

//  Instructions:
    //  Create a function take that takes an Array<Int> and returns an Int
    //  The output of your function is the sum of the two smallest positive numbers in the array.
    //  If the array has too few positive integers, return nil.

//  Examples:
    //  Input: [19, 5, 42, 2, 77, -5]
    //  Output: 7

//  ⌺ Black Diamond Challenge:
    //  Extend the function to handle an additional optional parameter, another array of Ints called 'exclude'.
    //  The function should return the sum of the two smallest positive numbers in the array that are not in the 'exclude' array.
    //  If there are too few positive integers left after excluding the specified numbers, return nil.

import Foundation

func sumTheSmallest(array: [Int]) -> Int? {
    var newArray = array
    newArray = newArray.filter({$0 > 0})
    let smallestNum = newArray.min()
    let smallestNumIndex = newArray.firstIndex(where: { $0 == smallestNum })
    if let index = smallestNumIndex {
        newArray.remove(at: index)
    }
    if let min1 = newArray.min(), let min2 = smallestNum {
        return min1 + min2
    } else {
        return nil
    }
}

print(sumTheSmallest(array: [1, 2, 3]) ?? 0)
