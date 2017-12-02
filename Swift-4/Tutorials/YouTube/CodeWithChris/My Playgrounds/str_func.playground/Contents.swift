//: STRINGS, FUNCTIONS && CLASSES - THE BASICS
import UIKit

// Explicitly typed variables
let name: String = "Lamar"
let initial: Character = "L"
var num = "0"
var age: Int = 24
var weight: Double = 165.0

var nickName: String? = "Mar-mar"
var otherName: String? = nil
print(otherName ?? name)

var arr: [String] = ["One", "Two", "Three"]
arr[0]
arr.append("Four")
print("I have \(arr[0]) siblings.")

var myDict: Dictionary<String, Int> = [
    "Cake": 1,
    "Candy": 3,
    "Games": 4
]

myDict["Icecream"] = 2
myDict["Cake"] = nil

for (key, val) in myDict {
    print("Key: \(key), Value: \(val)")
}

// Basic function syntax in Swift
func multiplyNums(_ num1: Int, num2: Int) -> Int {
    return num1 * num2
}
multiplyNums(5, num2: 9)




// Understanding Classes in Swift
class Spaceship {
    
    var fuelLevel = 100
    func cruise() {
        // Method instructions here...
    }
    
    func thrust() {
        // And more here... 🚀
    }
    
}

// Instance of class or object stemming from the Spaceship class.
let myShip: Spaceship = Spaceship() // Of type Spaceship. Not need explicit typed out... just for show
myShip.thrust()
myShip.cruise()
myShip.fuelLevel = 10
print(myShip.fuelLevel)












