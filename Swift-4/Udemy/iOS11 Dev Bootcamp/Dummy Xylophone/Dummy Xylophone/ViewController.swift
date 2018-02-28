//
//  ViewController.swift
//  Dummy Xylophone
//
//  Created by lamar on 2/27/18.
//  Copyright © 2018 Addacity. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer?
    let soundsArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileName: soundsArray[sender.tag - 1])
    }
    
    func playSound(soundFileName: String) {
        // Get the URL for file
        // Get file name and extension
        // See if the file exists
        // If so, play the file
        // If not, throw error
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer?.play()
    }
    
}

