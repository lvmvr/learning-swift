//: Playground - noun: a place where people can play

import UIKit

var someOptionalString: String?
var someOptionalNumber: Int?
var possibleNumber = "12THREE"

if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}


//: FORCE UNWRAPPING OPTIONAL VALUE
// "nil" is absence of value of certain type

if someOptionalNumber != nil { // If variable has a value
    print("Value is \(someOptionalNumber!)")
} else {
    print("No value present")
}

// UNCOMMENT LINES BELOW
someOptionalString = "Hello, Swift!"
someOptionalNumber = 23


//: OPTIONAL BINDING
// Can be used with if or while statement
// Creates temp variable and assigns it to optional
// If one value is false, entire assignment results in false equvilancy

if let temporaryOptionalString = someOptionalString,
   let temporaryOptionalNumber = someOptionalNumber,
   99 < 100 {
    print(temporaryOptionalString, temporaryOptionalNumber)
} else {
    print("No value found.")
}

//: GUARD STATEMENT

func multiplyByThree(number: Int?) {
    
    // Guard statement: Used in functions
    // Provides an early exit out of function, opposed to above.
    // Lets us know right away if value returns nil
    
    guard let someNumber = number else {
        print("Failed execution")
        return
    }
    
    // Now continue with normal operations
    print("Result: \(someNumber * 3)")
    
}

multiplyByThree(number: someOptionalNumber)

//: OPTIONAL CHAINING

struct Device {
    var type: String
    var price: Double
    var color: String
}

var myPhone: Device? // Optional object

// UNCOMMENT LINE BELOW
//myPhone = Device(type: "iPhone", price: 600, color: "Black")


// Optional Chaining - value gets automatically unwrapped, no errors
// devicePrice is now an optional
// No need to force unwrap myPhone
// Optional Chaining used with objects with properties

var devicePrice = myPhone?.price
let tax = 8.99

// Use if/let to safely unwrap optional
if let devicePrice = devicePrice {
    print("Total price: \(devicePrice + tax)")
} else {
    print("Error")
}


//: IMPLICITLY UNWRAPPED OPTIONALS
// Used when developer knows an optional will always have a value, always
// Never use if value will eventually go to "nil" value in future
// Primary use: Class initialization
// No need to unwrap the optional value in use
// Can use optional binding still to check for value

let storageCapacity: Int! = 600















