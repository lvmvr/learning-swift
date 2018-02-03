//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        // Understand why we did not fully define what the "selectedSoundFileName" was...
        // ...It uses the "sender" argument for the Button's IBAction
        // Simplified the action, associated buttons with "tag" property
        
        playSound(soundFileName: soundArray[sender.tag - 1])
    }
    
    // Define the functionality below...
    func playSound(soundFileName: String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        // A simple do-catch statement
        // Do this... if it doesn't work, catch error and do this instead...
        // Used 'try' since AVAudioPlayer can throw an error (look at source code)
        // File may or may not be in source, or type error, extension error, etc...
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
  

}

