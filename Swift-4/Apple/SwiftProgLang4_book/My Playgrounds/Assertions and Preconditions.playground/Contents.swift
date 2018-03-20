//: Playground - noun: a place where people can play

import UIKit
//: ASSERTIONS AND PRECONDITIONS

// Makes sure certain condition satisfied before running code
// Assertions help find mistakes during development
// Preconditions help during development and production


// Asserts age must be greater than or equal than zero to pass (true)
// ...if not, the next argument passes (false)
let age = -10
assert(age >= 0, "Age must always be greater than zero.")

// Assert Failure: use if conditionals already check for errors
if age > 10 {
    print("This child is older")
} else if age > 0 {
    print("This child is still young")
} else {
    assertionFailure("A person's age cannot be less than zero")
}
