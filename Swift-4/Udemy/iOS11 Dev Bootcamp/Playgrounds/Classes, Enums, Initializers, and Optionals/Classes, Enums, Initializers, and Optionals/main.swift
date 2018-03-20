//
//  main.swift
//  Classes, Enums, Initializers, and Optionals
//
//  Created by lamar on 3/20/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import Foundation

// Create object instance, with initialized parameters (init)
var myCar = Car() // Designated initialized object
var myOtherCar = Car(customColor: "Purple") // Using Convenience initialization

// BELOW: one way to use assignment to change color of myCar to 'red'
// myCar.color = "Red"

// Print object properties
print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
print(myOtherCar.color)
print(myOtherCar.drive()) // Accessing methods of Car superclass


var mySelfDrivingCar = SelfDrivingCar()
print(mySelfDrivingCar.color) // Inherits everything from Car class
print(mySelfDrivingCar.drive()) // Displays custom method call

mySelfDrivingCar.destination = "1 Hacker Way"
print(mySelfDrivingCar.drive()) // Now displays destination also
