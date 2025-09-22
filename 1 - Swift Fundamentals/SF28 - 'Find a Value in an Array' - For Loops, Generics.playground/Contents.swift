//  🏔️ MTECH Code Challenge SF28: "Find a Value in an Array"
//  Concept: Practice looking up data in an array; create functions which accept different types of parameters (aka Function Overloading); (Optional) Learn about Generics from the instructor

//  Instructions:
    //  You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
    //  The type of a and x can be String OR Int.
    //  Return true if the array contains the value, false if not.
    //  Take note of the wording of this problem. I should be able to pass in either an array of strings or an array of Ints and it will work the same.

//  Notes:
    //  If you're stuck, look up function overloading.

//  Examples:
    //  Input: array: [3, 4, 5, 8, 9], x: 3
    //  Output: true

    //  Input: array: ["hi", "hello", "howdy"], x: "sup"
    //  Output: false

//  ⌺ Black Diamond Challenge:
    //  Create another function. Accomplish the same goal using generics instead of function overloading.

import Foundation

func findValue(a: [String], x: String) -> Bool {
    a.contains(x)
}

func findValue(a: [Int], x: Int) -> Bool {
    a.contains(x)
}

let testString = ["hi", "no", "h", "i", "boooo"]
let testInt = [1, 2, 3, 5, 6, 7, 9, 10]

func generics<T: Equatable> (a:[T], x: T) -> Bool {
    a.contains(x)
}

print(findValue(a: testString, x: "no"))
print(findValue(a: testInt, x: 4))
print(findValue(a: testInt, x: 5))
print(generics(a: testInt, x: 6))
print(generics(a: testString, x: "h"))
