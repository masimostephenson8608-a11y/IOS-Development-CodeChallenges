//  🏔️ MTECH Code Challenge TP21: "Will It Divide"
//  Concept: Practice translating simple math into Swift code

//  Instructions:
    //  Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

//  Examples:
    //  Input: n: 10, x: 2, y: 5
    //  Logic: 10 is divisible by 2 and 5
    //  Output: true

    //  Input: n: 27, x: 9, y 2
    //  Logic: 27 is not divisible by 2
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Extend the function to accept an additional array parameter, 'divisors', which is an array of integers.
    //  The function should return true if the number n is divisible by *all* numbers in the 'divisors' array, and false if it is not divisible by any one of them.

import Foundation

func checkDivide(number n: Int, dividedBy x: Int, dividedByAgain y: Int) -> Bool {
    guard x != 0 || y != 0 else { return false }
    if n % x != 0 || n % y != 0 {
        return false
    } else {
        return true
    }
}

func checkDivideArray(number n: Int, divisors array: [Int]) -> Bool {
    guard !array.isEmpty && !array.contains(0) else { return false }
    var bools: [Bool] = []
    for number in array {
        if n % number != 0 {
            bools.append(false)
        } else {
            bools.append(true)
        }
    }
    if bools.contains(false) {
        return false
    } else {
        return true
    }
}


print(checkDivide(number: 10, dividedBy: 2, dividedByAgain: 5))
print(checkDivide(number: 27, dividedBy: 2, dividedByAgain: 9))

print(checkDivideArray(number: 15, divisors: [1, 5, 3]))
print(checkDivideArray(number: 27, divisors: [9, 3]))
print(checkDivideArray(number: 45, divisors: [1, 5, 9, 15]))
print(checkDivideArray(number: 21, divisors: [2, 5, 6, 7, 3]))
