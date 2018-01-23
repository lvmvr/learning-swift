//
//  ViewController.swift
//  Dicee
//
//  Created by lamar on 1/13/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Store index number
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    // Stores image string name
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // Create IBOutlets here...
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Starts ramdomization from the start...
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Shake motion event - triggers when user stops shaking phone.
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

    // Create IBActions here...
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImage()
    }
    
    
    // Keeping the code D.R.Y.
    // Added to IBAction (pressed) and viewDidLoad func (randomize on start)
    func updateDiceImage() {
        // Randomization - gets numbers from 0 to 5, not unto 6
        // Great for grabbing random index number from diceArray
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // Assigns random new image from array to image views
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

