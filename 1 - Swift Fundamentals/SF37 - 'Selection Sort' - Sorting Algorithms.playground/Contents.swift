//  🏔️ MTECH Code Challenge SF37: "Selection Sort"
//  Concept: Learn about another common sorting algorithm and practice manipulating data in an array

//  Instructions:
    //  Just like your previous code challenges, you are not allowed to use the .sort() method
    //  Create a function that takes in an array of Ints. Sort the array using an selection sort
    //  A visualization of what an insertion sort is can be seen here: 🔗https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

//  Examples:
    //  Input: [-43, 6, -2, 29, 16]
    //  Output: [-43, -2, 6, 16, 29]

//  ⌺ Black Diamond Challenge:
    //  Read about Introsort, the actual sorting algorithm Apple has chosen to use in the Array.sort() method, as well as elsewhere. 🔗https://en.wikipedia.org/wiki/Introsort
    //  Like before, you are not expected to understand every element of the page, but take notes in a comment on this challenge about what you can glean from the information.

import Foundation

func insertionSort(array: [Int]) -> [Int] {
    var functionArray = array
    var count = 0
    var sorted = false
    var sortedArray: [Bool] = []
    while sorted != true {
        functionArray.remove(at: functionArray.firstIndex(of: functionArray.min() ?? 0) ?? 0)
        functionArray.insert(functionArray.min() ?? 0, at: count)
                
        count += 1
        if count > array.count - 1 {
            count = array.count - 1
        }
           
        for num in 0...(functionArray.count - 2) {
            if functionArray[num] > functionArray[num + 1] {
                sortedArray.append(false)
            } else {
                sortedArray.append(true)
            }
        }
        if sortedArray.contains(false) {
            print(functionArray)
            sortedArray.removeAll()
            continue
        } else {
            sorted = true
        }
        continue
    }
    return functionArray
}

var testArray = [9, 8, 7, 5, 4, 6, 3, 2, 1]
print(insertionSort(array: testArray))
