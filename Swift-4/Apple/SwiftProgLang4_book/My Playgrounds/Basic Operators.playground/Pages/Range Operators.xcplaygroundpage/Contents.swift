//: [Previous](@previous)

import Foundation

//: CLOSED-RANGE OPERATORS

// Prints numbers from a...b, including b
// All values used in the range
// a must never be greater than b

for number in 1...10 {
    print(number)
}


//: HALF-OPEN RANGE OPERATOR

// Prints items from a..<b, not including b
// if a is equal to b, no items printed
// Most useful for zero-index lists (arrays)

let items = ["Chicken", "Pork", "Beef", "Fish", "Potatoes"]
let numberOfItems = items.count // 5

for i in 0..<numberOfItems {
    print(items[i])
}

//: ONE-SIDED RANGE OPERATOR

// Prints items from given index until end of list
// Can omit entire side of list
for i in items[2...] {
    print(i) // Beef, Fish, Potatoes
}

for i in items[...2] {
    print(i) // Chicken, Pork, Beef
}

// Same output, performed with half-open range operator
for i in items[..<3] {
    print(i) // Chicken, Pork, Beef
}

// Check if value contains certain value in a range
// Grabs all possible numbers, up to and including some number
let range = ...5
range.contains(7) // False
range.contains(-256) // True
range.contains(5) // True

//: [Next](@next)
