//
//  SelfDrivingCar.swift
//  Classes, Enums, Initializers, and Optionals
//
//  Created by lamar on 3/20/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import Foundation

// Using Inheritance by SelfDrivingCar subclassing from the Car superclass
class SelfDrivingCar: Car {
    
    var destination: String? // Optional - currently set to "nil"
    
    override func drive() {
        super.drive() // Inherits all original drive() functionality from superclass Car
        
        // Optional Binding Technique
        // No need to forcefully unwrap destination
        if let finalDestination = destination {
            print("Arriving at \(finalDestination), Yay!") // Custom functionality added
        }
    }
}
