//  🏔️ MTECH Code Challenge SF08: "Person Behaviors"
//  Concept: Practice creating structs, comparing two structs, and mutating struct values

//  Instructions:
//  Create a Person value type with the following attributes and behaviors:
//  Attributes: name, age, height, weight
//  Behaviors:
//  greeting: Print "Hello, my name is <name>, and I am <age> years old."
//  birthday: Increase age by one
//  growUp: Increase height by 0.1

//  ⌺ Black Diamond Challenge:
//  Add a variable called bodyMassIndex. Set its initial value to 0. Assuming height is in meters and weight is in kilograms, compute the bodyMassIndex property any time height and weight change.

import Foundation

struct Person {
    public var name: String
    public var age: Int
    public var height: Double {  // meters
        didSet {
            heightChange = true
            BMI()
        }
    }
    public var weight: Double {  // kilograms
        didSet {
            weightChange = true
            BMI()
        }
    }
    private var bodyMassIndex = 0.0

    private var heightChange = false
    private var weightChange = false

    init(name: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
    }
    func greeting() {
        print("Hello, my name is \(self.name), and I am \(self.age) years old.")
    }

    mutating func birthday() {
        age += 1
    }

    mutating func growUp() {
        height += 0.1
    }

    private mutating func BMI() {
        if weightChange == true && heightChange == true {
            bodyMassIndex = weight / (height * height)
            heightChange = false
            weightChange = false
            print("Calculated BMI")
        }
    }
}

var person = Person(
    name: "Masimo",
    age: 17,
    height: 1.7525999999999997,
    weight: 54.4311
)
print(person)
person.growUp()
person.weight += 1
print(person)
