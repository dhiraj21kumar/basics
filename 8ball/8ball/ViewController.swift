//
//  ViewController.swift
//  8ball
//
//  Created by Dhiraj Kumar on 12/06/19.
//  Copyright © 2019 Dhiraj Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomImageView: Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
    }
    
    func updateDiceImage(){
        randomImageView = Int.random(in: 0..<6)
        
        print(randomImageView)
        imageView.image = UIImage(named: ballArray[randomImageView])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
}

