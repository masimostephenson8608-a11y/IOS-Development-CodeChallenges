//  🏔️ MTECH Code Challenge SF05 - "Area of a Circle"
//  Concept: Practice translating math equations into Swift functions; practice using Doubles

//  Instructions:
    //  Create a function that finds the area of a circle. The function will take in an Int as a parameter. This will be the radius of the circle.
    //  The function should return the area of the circle as a Double.
    //  You may simply use "3.14" to represent pi.

//  Hint:
    //  This is not a test of your knowledge of how to find the area of a circle.

//  ⌺ Black Diamond Challenge:
    //  Find out how to get the exact value of pi in Swift and change your code to use it.

import Foundation

func area(_ rad: Int) -> Double {
    return Double.pi * pow(Double(rad), 2)
}

area(3)
