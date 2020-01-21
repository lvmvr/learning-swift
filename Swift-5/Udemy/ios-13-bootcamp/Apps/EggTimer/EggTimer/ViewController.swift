//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    var timer = 0
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let eggTimes = [
            "Soft": 300,
            "Medium": 420,
            "Hard": 720
        ]
        timer = eggTimes[sender.titleLabel!.text!]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if timer > 0 {
            print("\(timer) seconds until your eggs are done.")
            timer -= 1
        }
    }
}
