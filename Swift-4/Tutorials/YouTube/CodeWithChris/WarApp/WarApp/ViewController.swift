//
//  ViewController.swift
//  WarApp
//
//  Created by lamar on 11/30/17.
//  Copyright © 2017 Addacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // arc4random Generates random number
        // arc4random_uniform() gets range from 0 to specified number, minus 1.
        // We add '2', which gives us numbers 2-14.
        // If we generated '0', we get 2. If '12', we get 14. Notice why we chose 13 as arg.
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        print("left random number is \(leftRandomNumber)")
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        print("right random number is \(rightRandomNumber)")
        
        // Creates UIImage object for both.
        // Uses image property of the image view.
        // Grabs 'String' name from Assets library
        // We use string interpolation and random number variables together.
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if leftRandomNumber > rightRandomNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if rightRandomNumber > leftRandomNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if leftRandomNumber == rightRandomNumber {
            leftScore += 0
            rightScore += 0
            
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }
    }    

}


