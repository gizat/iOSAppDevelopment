//
//  ViewController.swift
//  Xylophone
//
//  Created by Gizat Makhanov on 26/09/2018.
//  Copyright © 2018 Gizat Makhanov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFilename: soundArray[sender.tag - 1])
    }
    
    func playSound(soundFilename : String) {
        let soundURL = Bundle.main.url(forResource: soundFilename, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

