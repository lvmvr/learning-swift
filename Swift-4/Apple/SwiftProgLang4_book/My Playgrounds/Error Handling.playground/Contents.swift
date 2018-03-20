//: Playground - noun: a place where people can play

import UIKit

let numberOne = 250
let numberTwo = "Two Hundred and Fifty"

func multiplyNumbers(firstNumber x: Int, secondNumber y: Int) throws {
    print(x * y)
}

do {
    try multiplyNumbers(firstNumber: 250, secondNumber: 3)
    print("Success")
} catch {
    print("Uh Oh")
}

// We put "try" before func call since it "could" cause an error
// ...we add catch clause to execute code in case it "catches" and error
// Note how the do clause is outside of the function, as function is being called
