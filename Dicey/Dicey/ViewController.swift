//
//  ViewController.swift
//  Dicey
//
//  Created by young davvss on 10/10/18.
//  Copyright © 2018 Papi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTheDiceImages()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateTheDiceImages()
        
    }
    
    // this is making our app aware of device motion while using our dice app. when the shaking motion ends, motionEnded, we update the dice images
    // with a random number from 1-6 (0-5 in the code) that corresponds to an image in the "diceArray" constant which is located on line 13
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateTheDiceImages()
        
    }
    
    // we're going to make a function, a type of variable, that allows us to put the random number generator and image switching feature anywhere we want with ease.
    
    func updateTheDiceImages() {
        
        // These are the random number generators we're using
        
        randomDiceIndex1 = Int(arc4random_uniform(5))
        randomDiceIndex2 = Int(arc4random_uniform(5))
        
        // Our random number generators are changing the index number of the diceArray, which shows the dice image matching the randomly generated index number
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        
    }
    
}

