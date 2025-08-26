//  🏔️ MTECH Code Challenge SF06 - "Rectangle Calculators"
//  Concept: Practice creating structs with stored properties and both mutating and non-mutating functions

//  Instructions:
    //  1) Create a struct called "Rectangle." (Be sure to capitalize the name!)
    //  2) Create two Int properties called "sideA" and "sideB." (Be sure to use camelCase!)
    //  3) Create two functions inside the struct, one which calculates area and the other, perimeter
    //  Each function should return an Int for the area of the rectangle and the perimeter of the rectangle, respectivly.

//  Example: (Using a different shape)
    //  struct Circle {
    //      var radius: Int

    //      func area() -> Double {
    //          return 3.14 * Double(radius * radius)
    //      }
    //  }

//  ⌺ Black Diamond Challenge:
    //  Create a function in the struct called "scale" have it take an Int as a parameter. Multiply each side of the rectangle by the parameter to "scale up" the rectangle. This function does not return anything.

import Foundation

struct Rectangle {
    var sideA: Int
    var sideB: Int
    
    func area() -> Int {
        let ara = sideA * sideB
        return ara
    }
    
    func perimeter() -> Int {
        let pt = sideA * 2 + sideB * 2
        return pt
    }
    
    mutating func scale(num: Int) {
        sideA *= num
        sideB *= num
    }
}

var rc = Rectangle(sideA: 1, sideB: 3)
rc.scale(num: 2)
var rca = rc.area()
var rcp = rc.perimeter()
print("The area is \(rca) units squared.")
print("The perimeter is \(rcp) units")
