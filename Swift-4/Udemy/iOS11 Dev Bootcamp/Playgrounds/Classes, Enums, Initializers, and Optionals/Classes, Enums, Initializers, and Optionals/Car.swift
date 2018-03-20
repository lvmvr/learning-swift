//
//  Car.swift
//  Classes, Enums, Initializers, and Optionals
//
//  Created by lamar on 3/20/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import Foundation

// Create your own custom datatype with Enumerations
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var color: String = "Black" // Default color for Car instances
    var numberOfSeats = 4
    var typeOfCar: CarType = .Hatchback // Select Enumeration type with dot notation
    
    // Sets a "Designated Initializer"
    // Makes sure all properties of object has values
    // Could create custom properties by inserting parameters...
    // ...but would be required each time Car instance created.
    init() {
    }
    
    // "Convenience initializers" allows us to customize initialized objects
    // Builds on top of the default init()
    convenience init(customColor: String) {
        self.init() // Basically Car.init() - propagates init method call onto custom one
        color = customColor // Color now changes to whatever user puts into parameters
    }
    
    // Default method 
    func drive() {
        print("Car is moving...")
    }
}







