//: UDACITY: STRINGS SYNTAX PLAYGROUND

import UIKit

/******************************
 
 STRINGS
 tip: Use double quotations, ""
 
 ******************************/
var str = "Hello, playground"

/******************************

 EMPTY STRINGS
 
******************************/

var emptyString = String()
var emptyString2 = ""

/******************************
 
 STRING INTERPOLATION
 tip: use \(var_name)
 
******************************/

var favoriteVegetable = "Brocolli"
print("My favorite veggie? \(favoriteVegetable)")

/******************************
 
 STRING CONCATENATION
 
******************************/
print("Eating " + favoriteVegetable + " is good for you!")

/******************************
 
 STRING PROPERTIES: LOOPING
 
******************************/

let name = "LAMAR"
for letter in name {
    print(letter)
}

/******************************
 
 STRING PROPERTIES: REVERSED
 
 ******************************/
name.reversed()

/******************************
 
 STRING PROPERTIES: COUNT
 
******************************/

name.count

/******************************
 
 EMOJIS 💩🙊😎💯🛩👀😭😁⚡️🐼
 
******************************/

let weLit = "🔥🔥🔥"
print(weLit)


/******************************
 
 MORE INTERPOLATION W. STRINGS
 
******************************/
var myPoodle = "Misty"
var foodPerWeek: Double = 12
var poundsToKilos: Double = 0.45

print("My doggy \(myPoodle) eats \(foodPerWeek) pounds per week.")
print("My doggy \(myPoodle) eats \(foodPerWeek * poundsToKilos) kilos per week.")

// CONVERT NUMBER '567' TO $5.67
let numOfPennies = 567
let dollarInt = numOfPennies / 100
let dollarsAndCentsString = "$\(dollarInt).\(numOfPennies % 100)"

/******************************
 
 STRING PROPERTIES: SUBSTRINGS
 
******************************/

// CHECK TO SEE IF STRING 'CONTAINS' A SUBSET OF CHARACTERS
var fullName = "Lamar R. Glenn"
fullName.contains("Glenn")

// REPLACE A SUBSET OF CHARACTER OCCURENCES WITHIN A STRING
var camera = "sony alpha 6000"
camera.replacingOccurrences(of: "s", with: "S")













