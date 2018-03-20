//: [Previous](@previous)

import Foundation

//: NIL COALESING OPERATOR

var a: Int?
var b: Int?
a = 3
b = 0

a != nil ? a! : b
// Value a has a value 
// Value b is never evaluated
// Process called "Short-circut evaluation"

let defaultColor = "Green"
var userColor: String? // Set to "nil", thought default value was already nil...

let customColor = userColor ?? defaultColor
print(customColor)
// If user color == nil, defaults to second option (defaultColor)

//: [Next](@next)
