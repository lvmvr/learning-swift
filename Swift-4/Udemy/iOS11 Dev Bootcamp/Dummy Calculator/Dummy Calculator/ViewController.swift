//
//  ViewController.swift
//  Dummy Calculator
//
//  Created by lamar on 3/7/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import UIKit

enum Operation: String {
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case NULL = "Null"
}

class ViewController: UIViewController {
    @IBOutlet weak var resultsLabel: UILabel!
    
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation: Operation = .NULL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultsLabel.text = "0"
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if runningNumber.count <= 8 {
            runningNumber += "\(sender.tag)"
            resultsLabel.text = runningNumber
        }
    }
    @IBAction func clearLabel(_ sender: UIButton) {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        currentOperation = .NULL
        result = ""
        resultsLabel.text = "0"
    }
    @IBAction func changeValue(_ sender: UIButton) {
    }
    @IBAction func getPercentage(_ sender: UIButton) {
    }
    @IBAction func dotPressed(_ sender: UIButton) {
        if runningNumber.count <= 7 {
            runningNumber += "."
            resultsLabel.text = runningNumber
        }
    }
    @IBAction func equalPressed(_ sender: UIButton) {
        operation(operation: currentOperation)
    }
    @IBAction func add(_ sender: UIButton) {
        operation(operation: .Add)
    }
    @IBAction func subtract(_ sender: UIButton) {
        operation(operation: .Subtract)
    }
    @IBAction func multiply(_ sender: UIButton) {
        operation(operation: .Multiply)
    }
    @IBAction func divide(_ sender: UIButton) {
        operation(operation: .Divide)
    }
    func operation(operation: Operation) {
        if currentOperation != .NULL {
            
            if runningNumber != "" {
                rightValue = runningNumber
                runningNumber = ""
                
                if currentOperation == .Add {
                    result = "\( Double(leftValue)! + Double(rightValue)! )"
                } else if currentOperation == .Subtract {
                    result = "\( Double(leftValue)! - Double(rightValue)! )"
                } else if currentOperation == .Multiply {
                    result = "\( Double(leftValue)! * Double(rightValue)! )"
                } else if currentOperation == .Divide {
                    result = "\( Double(leftValue)! / Double(rightValue)! )"
                }
                
                leftValue = result
                
                // Remove decimal place from results
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0) {
                    result = "\(Int(Double(result)!))"
                }
                resultsLabel.text = result
            }
            
            currentOperation = operation
            
        } else {
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
    }
    


    

}

