//: Playground - noun: a place where people can play

import UIKit

var welcomeMessage: String

// Explicitly declare numerous variables on one line
var firstNum, secondNum, thirdNum: Double

// Literal value - Swift infers of type Double
let somePi = 0.14159
let halfPi = 3

// Numeric conversion before adding two different value types.
let pi = Double(halfPi) + somePi

/*
 
 TUPLES
 - More suited for temporary groups of values
 - Better to use classes or structures for persistant data, non-temporary
 
 */

// Simple two-value tuple of type int and str
let http404Error = (404, "Page not found.")
print(http404Error)

// Decompose tuple values into variables
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

// Decompose part of the tuple's value, omit the other
let (justStatusCode, _) = http404Error
print(justStatusCode)

// Access tuple values using zero-indexing
print("The error code is \(http404Error.0).")

// Name the tuple values, access with dot notation.
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")




/*
 
 OPTIONALS
 - Used for values that may or may not contain a value (nil).
 - Different from obj-c and C nil, as it can be attatched to any value, not just pointer to obj.
 - Can be forced unwrapped with (!) - use with caution unless value known.
 - Can test with if-while statements
 - Optional binding
 
 */

let computedValue: Int? = 0

if computedValue != nil {
    print("The value is \(computedValue!)")
}

// Optional Binding - used to store value in temp. variable if value exists.

// Instead of below...
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // Returna an optional Int.

// Now using optional binding - assigns temp. value to actualNumber
// If there is indeed a value inside possibleNumber...
// ...and that value can be converted to type Int...
// Imagine if possibleNumber = "One"... what would return
// Even if value returns "nil", actualNumber is already initialized with value
// No need to unwrap in this case

if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" is not an integer.")
}














