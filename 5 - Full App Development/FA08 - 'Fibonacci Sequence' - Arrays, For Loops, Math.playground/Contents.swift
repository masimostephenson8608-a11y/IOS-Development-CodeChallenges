//  🏔️ MTECH Code Challenge SF08: "Fibonacci Sequence" 🐚
//  Concept: Practice translating a math formula into Swift code; practice using index subscripting to dynamically access elements of an array

//  Instructions:
    //  Create a function that takes a number as an argument and returns n instances of the Fibonacci sequence as an array.
    //  Fibonacci numbers: F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.
    //  So the simple explanation is: The next element is the sum of the two previous elements.

//  Notes:
    //  If 0 is given, return an empty array.
    //  The input will never be a negative integer.

//  Examples:
    //  Input: fibSeq(4), Output: [0, 1, 1, 2]
    //  Input: fibSeq(7), Output: [0, 1, 1, 2, 3, 5, 8]
    //  Input: fibSeq(0), Output: []

//  ⌺ Black Diamond Challenge:
    //  Make another function that will return a specific slice of the Fibonacci sequence. The array will have n instances of the Fibonacci sequence starting from index i.
    //  Input: (fibSeq(n: 4, i: 7), Output: [8, 13, 21, 34]

import Foundation

func fiboSequence(_ loops: Int) -> [Int] {
    var array: [Int] = []
    for count in 0..<loops {
        if count == 0 {
            array.append(0)
            continue
        } else if count == 1 {
            array.append(1)
            continue
        } else {
            let newNumber = array[count - 1] + array[count - 2]
            array.append(newNumber)
        }
    }
    
    return array
}

print(fiboSequence(7))
