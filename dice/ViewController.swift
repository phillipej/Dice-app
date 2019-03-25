//
//  ViewController.swift
//  dice
//
//  Created by Phillipe Osorio on 04/02/19.
//  Copyright © 2019 Phillipe Osorio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }

  
    @IBAction func rolldice(_ sender: Any) {
        
        updateDice()
        
        
        
        
    }
    
    func updateDice(){
        
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        
        print(randomDice2)
        
        diceImageView1.image = UIImage (named: diceArray[randomDice1])
        
        diceImageView2.image = UIImage (named: diceArray[randomDice2])
        
    }
    
}

