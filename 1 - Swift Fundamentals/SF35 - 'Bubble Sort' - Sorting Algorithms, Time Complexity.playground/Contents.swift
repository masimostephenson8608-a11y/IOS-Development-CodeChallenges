//  🏔️ MTECH Code Challenge SF35: "Bubble Sort" 🫧
//  Concept: Learn about sorting algorithms and build one of the simpler, though less efficient ones; gain a brief introduction to sorting algorithms and time complexity

//  Instructions:
    //  Create a function that takes in an array of Ints.
    //  You are to sort this array without using the built in .sort() method.
    //  Implement a bubble sort. A visual example of what a bubble sort is is shown here: 🔗https://en.wikipedia.org/wiki/Bubble_sort#/media/File:Bubble-sort-example-300px.gif
    //  Return the sorted array

//  Examples:
    //  Input: [15, 5, 6, 7, 2, 3, 45, 12]
    //  Output: [2, 3, 5, 6, 7, 12, 15, 45]

//  ⌺ Black Diamond Challenge:
    //  Sorting algorthims are implemented by Swift under the hood so that you will not need to know them directly. Still, you may have occasion in your future as a coder in which you will need to know more.
    //  Browse through the Wikipedia page for sorting algorithms: 🔗https://en.wikipedia.org/wiki/Sorting_algorithm
    //  This is an article with complicated computer science theory; you do not need to understand the entire history of computing after reading one Wiki page. Take notes in a comment in this challenge on what you do glean and learn about the different sorting algorithms as you skim through.

import Foundation


func sortTheArray(array: [Int]) -> [Int] {
    var functionArray = array
    var sorted = false
    var boolArray: [Bool] = []
    while sorted != true {
        for numbers in 0...functionArray.count - 2 {
            if functionArray[numbers] > functionArray[numbers + 1] {
                functionArray.swapAt(numbers, numbers + 1)
            }
        }
        for i in 0..<functionArray.count - 1 {
            if functionArray[i] > functionArray[i + 1] {
                boolArray += [false]
            }
        }
        if boolArray.contains(false) {
            boolArray.removeAll()
            continue
        } else {
            sorted = true
        }
    }
    return functionArray
}


let testArray = [1, 2, 3, 9, 8, 7, 6, 4, 6, 7, 9, 2, 3, 4, 0]
print(testArray)
print(sortTheArray(array: testArray))
