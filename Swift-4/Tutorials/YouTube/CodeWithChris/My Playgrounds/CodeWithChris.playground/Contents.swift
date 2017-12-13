//: STRINGS, FUNCTIONS && CLASSES - THE BASICS
import UIKit

// Explicitly typed variables
let name: String = "Lamar"
let initial: Character = "L"
var num: String = "0"
var age: Int = 24
var weight: Double = 165.0

// Optionals
var nickName: String? = "Mar-mar"
var otherName: String? = nil
print(otherName ?? name)

// Explicit type: Array of Strings
var arr: [String] = ["One", "Two", "Three"]
arr[0]
arr.append("Four")
print("I have \(arr[0]) siblings.")

// Dictionaries
var myDict: Dictionary<String, Int> = [
    "Cake": 1,
    "Candy": 3,
    "Games": 4
]

myDict["Icecream"] = 2
myDict["Cake"] = nil


// The for-loop and ranges
for (key, val) in myDict {
    print("Key: \(key), Value: \(val)")
}

var sum = 0
for nums in 1..<5 {
    sum += nums
}
print(sum)

for nums in 1...5 {
    sum += nums
}
print(sum)

// while and repeat...while loop
var counter = 0

while counter < 5 {
    print(counter)
    counter += 1
}

// Counter is now == 5

repeat {
    print(counter)
    counter += 1 // Counter == 6, but it runs once only.
} while counter < 5 // Exits loop


// Function syntax in Swift - specifying return type of 'Int'
// First arg does not need a label name, arg 'num2' does.
func multiplyNums(_ num1: Int, num2: Int) -> Int {
    return num1 * num2
}
multiplyNums(5, num2: 9)

// Function using argumentLabel and parameterLabel - arg label not technically needed
func addTwoNumbers(arg1 num1: Int, arg2 num2: Int) -> Int {
    return num1 + num2
}
addTwoNumbers(arg1: 15, arg2: 25)




// Understanding Classes in Swift
class Spaceship {
    
    // Property of Swift
    var fuelLevel = 100
    var speed = 300
    
    func cruise() {
        // Method instructions here...
        print("Crusing at \(speed)MPH, fuel levels at \(fuelLevel).")
    }
    
    
}

// Instance of class or object stemming from the Spaceship class.
// Of type "Spaceship" - doesn't need explicit typed out... just for show
let myShip: Spaceship = Spaceship()
myShip.cruise()
myShip.fuelLevel = 10 // Change property values
print(myShip.fuelLevel)

// Class Inheritance - use properties and methods of a class.
class Rocket : Spaceship {
    
    // Override to change Parent's class methods.
    // cruise() was original method of Spaceship class, we add to it now.
    override func cruise() {
        
        // Use 'super' to access Parent class' overridden methods.
        // Could use super in an override, then add to it.
        super.cruise()
        
        print("Flying at \(speed + 50). Fuel at \(fuelLevel - 50)")
    }
}

let myRocket = Rocket()
print(myRocket.cruise())

// Initializer functions for Objects
class Person {
    
    // Default values...
    var name = ""
    var age = 0
    
    // Technically the default designated initializer.
    // You can set multiple initializers for an object - look at other methods.
    // init() makes sure Object is properly initialized and ready to be used.
    init() {
        // It's empty in here...
    }
    
    init(_ n: String, _ a: Int) {
        
        // "self.property" points to default properties above.
        // The "= n" refers to the parameter.
        // "self" refers to the object being created, similar to 'this' in JS
        self.name = n
        self.age = a
    }
}

// By default, we initialize Person with empty "()"
// This uses the empty "init() {...}" decalaration.
let myPerson = Person()

// Try using arg labels for less ambiguity
// Ex: Person(name: "Jeff", age: 33)
let newGuy = Person("Jeff", 33)
print(newGuy.age)



// Use 'optional' for variables that could have values, or no value at all (nil).
class BlogPost {
    
    // Computed Property
    var fullTitle: String {
        
        // Check that title and author are not nil
        if title != nil && author != nil {
            return title! + " by " + author!.name
        } else if title != nil {
            return title!
        } else {
            return "No Title or Author, sorry. 🙈"
        }
    }
    
    var title: String? // Could have or not have String value boxed in, but if so it is of type String
    var body = "Hey "
    var author: Person? // Same for Person instance...
    var numberOfComments = 0
    
}
let post = BlogPost()
print(post.body + "y'all!")

// Now we check to see if value exists in optional 'title'
// If there is no value in "post.title", code won't execute
// Here, we assign a new constant to post.title, only IF it exists.

// Comment out line below, what happpens?
post.title = "Yo"

// Test #1
// We assign actualTitle to post.title IF value exists within post.title
// IF no value, if-statement is never ran

// Called "Optional Binding"
if let actualTitle = post.title {
    print(actualTitle + " salut!")
}

// Force unwrapping optional - use "post.title" with exclamation point (!) if you know there's a value inside.
// Comment out line below

//print(post.title! + " was good.")

// ...or simply test if optional value is not nil
// Test #2

//if post.title != nil {
//    print(post.title! + " was good.")
//}

// Test Computed String

let myAuthor = Person()
myAuthor.name = "Lamar Glenn"

let myBlogPost = BlogPost()
myBlogPost.author = myAuthor
myBlogPost.title = "The Great Escape"

// Computes value below - try commenting values out above
print(myBlogPost.fullTitle)



// Designated vs. Convenience Initializers

class Racer {
    var name = ""
}

class RaceCar {
    var car: String
    var info = ""
    var driver: Racer
    var numberOfCars = 1
    
    // The Designated Initializer
    // Notice car and driver are no longer optionals
    // Designates those two values by default, guaranteed
    init() {
        car = "Lamborghini Huracan"
        driver = Racer()
    }
    
    // Simply for convenience, no arg labels needed.
    // We just want to set a custom car... but what about the uninitialized "driver" property?
    convenience init(customCar: String) {
        
        // Guarantees above init() will be called
        // Also guarantees uninitialized values (var driver: Racer) will be initialized (no longer optionals)
        self.init()

        car = customCar
    }
    
}
// let myCar = RaceCar()  --- Prints Huracan... Works because "self.init()" ran inside.
let myCar = RaceCar(customCar: "Lamborghini Aventador")

// Prints Aventador
print(myCar.car)


// Arrays in Swift

var a = "Cat"
var b = "Dog"
var c = "Mouse"

// Empty Array explicit to String type
var myArr = [String]()

// Explicitly typed Array with stored values
var secArr: [String] = [a, b, c]
print(secArr)

// Loop through items of an Array
for items in secArr {
    print(items)
}

// Append elements to existing array
myArr += ["Cow", "Chicken", "Ostrich"]

// Remove element at specified index
myArr.remove(at: 2)

// Append new element, check out other methds
myArr.append("Pig")

// Change value of first index
myArr[0] = "Horse"
print(myArr)

// Dictionaries in Swift
// Stores key-value pairs of certain datatypes

// Empty Dictionary v.1
var cardDB = Dictionary<String, String>()

// Empty Dictionary v.2
var cardDB2 = [String: String]()

// Empty Array, similar syntax
var arrDB = [String]()

// Add key-value pair to Dictionary
cardDB["JSD 024"] = "Lamborghini Huracan"
cardDB["RYR 559"] = "Lamborghini Countach"
cardDB["EEG 100"] = "Toyota Camry"
cardDB["YYX 333"] = "Jeep Cherokee"

// Retrieve value from Dictionary
cardDB["JSD 024"]

// Update values in Dictionary
cardDB["JSD 024"] = "Lamborghini Aventador"

// Remove values in Dictionary
cardDB["JSD 024"] = nil

// Iterating over a Dictionary using tuples value (key, value)
for (license, car) in cardDB {
    print("Car \(car) has license plate No. \(license)")
}





