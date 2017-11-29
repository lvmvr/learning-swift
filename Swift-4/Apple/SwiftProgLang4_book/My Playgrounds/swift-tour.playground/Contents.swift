import UIKit

var str = "Hello, playground"
var myVariable = "Hello, Swift!"

// Empty Strings in Swift
var emptyString = String()
var emptyString2 = ""


// CONSTANTS in Swift - cannot be mutated
let label = "The width is "
let width = 100
let msg = label + String(width)  // Explicit instance of String for type conversion

// Explicit vs. Implicit
let implicitVar = 70.0
let explicitVar: Double = 70.0

// Strings
let longString = """
This is a very long string
for the moment,
this line will not be indented.

Except this line.

Goodbye.

"""
print(longString)

// Include Values in Strings
var apples = 3
var oranges = 9
let lunch = "I have \(apples) apples and \(oranges) oranges."


// ARRAY + DICTIONARIES in Swift
var myArray = [24, 36, 3]
print(myArray[1]) // 36
myArray[2] = 12
print(myArray)

var myDict = [
    "book": "Harry Potter",
    "school": "Hogwarts",
    "occupation": "wizard"
]
myDict["pet"] = "owl"
print(myDict)

// Empty Array and Dictionary (Explicit type for empty value declarations)
let emptyArray = [String]()
let emptyDict = [String: Float]()

myArray = [] // Sets new value for myArray w/o explicit type.


// Control Flow in Swift
let individualScores = [24, 48, 3, 56, 90, 77]
var teamScore = 0

for score in individualScores {
    if score > 50 {   // CANNOT do if score {...} - returns ERROR
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// OPTIONALS in Swift - use for values that might be "missing"
var optionalString: String? = "Hello"
print(optionalString == nil)  // Returns FALSE since value exists

let optionalName: String? = "Johnny Appleseed"   // Change to nil - what happens?
var greeting = "Hello, "

if let name = optionalName {  // NOTE: this is an assignment, and optionalName !== nil.
    greeting = "Hello, \(name)."
} else {
    greeting = "Hello, Anonymous. "
}
print(greeting)

// Using DEFAUT VALUE for OPTIONALS in swift - good instead of 'else' statement
let nickName: String? = nil
let fullName: String = "Lamar R Glenn"

let informalGreeting = "Hi, \(nickName ?? fullName), was good fam?"
print(informalGreeting)  // Uses other default since optional value missing, or 'nil'.

// SWITCH statements in Swift - no need for 'break' statements in Swift.
let veggies = "red peppers"
switch veggies {
case "cucumbers":
    print("Those suck.")
case "tomatoes":
    print("Those are ok.")
    //     case let x where x.hasSuffix("peppers"):      --- NEEDS 'import UIKit'
//         print("Yes! Give me those.")
default:
    print("What do you have again?")
}

// Using for-in for looping through Dictionaries in Swift - Find the largest number.
// BONUS: Add another variable to track type of largest number.
let someInterestingNums = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0   // Will be mutated/ changed in loop.
var type = ""

for (kind, numbers) in someInterestingNums {   // For each key-value pair in our Dict...
    for number in numbers {  // For each number in our array of values...
        if number > largest {
            largest = number
            type = kind
        }
    }
}
print("Type: \(type) \nNumber: \(largest)") // Output: 25

// WHILE-LOOP in Swift - also used at end to run once (do-while-kinda)
var n = 2
while (n < 100){
    n*=2
    print(n)    // 'n' will store new value until condition fails.
}
// Output: 128

var m = 2

repeat {      // Uses 'repeat' keyword instead of 'do', same format.
    m*=2
    print(m)
} while (m < 100)

// RANGES ..< vs ... for looping values
var total = 0

for i in 0..<4 {
    total=i      // Use total+=i to add onto last values.
}

print("My total is \(total)") // prints 3, not 4!

var sum = 0
for i in 0...5 {
    sum = i
}
print("My sum is \(sum)") // prints 5, since '...' includes end value.

// FUNCTIONS in Swift - Basic structure w/ parameters and return type.
func greet(person: String, day: String, lunch: String) -> String {
    return "Hello, \(person). Today is \(day). For lunch, enjoy some \(lunch)"
}
print(greet(person: "Lamar", day: "Tuesday", lunch: "Tacos."))

// FUNCTIONS w/o parameter label name
func greet(_ person: String, on day: String) -> String {
    return "Hello, \(person). Today is \(day)"
}
greet("John", on: "Wednesday")

// NOTE: The 'on' is the custom parameter name, separated with space. Try changing it!
//Use the "_" for no argument name.
//Parameter name is still used with "_", not sure why. 🤔 Just not needed when using argument in function call.
