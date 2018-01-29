//: Playground - noun: a place where people can play

import UIKit

/*
 
        [Challenge] Make a BMI Calculator in Swift Playgrounds: Section 7, Lecture 66
 
 */


func calculateBMI(personHeight: Double, personWeight: Double) -> String {
    
    // Formula calculating BMI
    let bmi = personWeight / pow(personHeight, 2)
    
    // Use 2 decimal places for BMI results
    let shortenedBMI = String(format: "%.2f", bmi)
    var message = ""
    
    if bmi > 25 {
        message = "you're overweight'."
    } else if bmi > 18.5 {
        message = "your weight is normal."
    } else {
        message = "you're underweight'."
    }
    
    return "Your BMI is \(shortenedBMI) and \(message)"
}

// 72 inches and 170 pounds == 1.8 meters and 77.11 kilograms
calculateBMI(personHeight: 1.8, personWeight: 77.11)


/*
 
 Understanding FOR...IN loops
 
 */

var numbers = [0, 45, 3, 18, 99, 2, 11, 55, 56, 6, 44, 10]

// for each number in the array
for number in numbers {
    print(number)
}

// from numbers 1 to 10
for number in 1...10 {
    print(number)
}

// from numbers 1 to 9
for number in 1..<10 {
    print(number)
}

// from numbers 1 to 100, but only even numbers
for number in 1...100 where number % 2 == 0 {
    print(number)
}

/*
 
 [Challenge] Fibonacci Sequence
 
 */


func fibonacci(until numbers: Int) {
    for number in 1...numbers {
        print(number)
    }
}

fibonacci(until: 5)


// 0, 1, 1, 2, 3, 5, 8, 13, 25






