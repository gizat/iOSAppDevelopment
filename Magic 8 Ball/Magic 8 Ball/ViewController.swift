//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Gizat Makhanov on 9/26/18.
//  Copyright © 2018 Gizat Makhanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1.png", "ball2.png", "ball3.png", "ball4.png", "ball5.png"]
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

