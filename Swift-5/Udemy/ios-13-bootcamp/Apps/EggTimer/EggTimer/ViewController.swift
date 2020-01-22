//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var seconds = 0
    var timer = Timer()
    let eggTimes = [
        "Soft": 3,
        "Medium": 4,
        "Hard": 7
    ]
    
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        // Start timer with hard reset
        timer.invalidate()
        progressBar.progress = 1
        
        
        // Pulls from dictionary above for seconds
        seconds = eggTimes[sender.titleLabel!.text!]!
        
        // Creates a new timer interval after it was invalidated
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    // uses @objc since "#selector" is being used from obj-c syntax
    @objc func updateCounter() {
        if seconds > 0 {
            print("\(seconds) seconds until your eggs are done.")
            seconds -= 1 // Countdown
        } else {
            timer.invalidate()
            updateLabel.text = "DONE!"
        }
    }
}
