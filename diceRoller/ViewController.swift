//
//  ViewController.swift
//  diceRoller
//
//  Created by Lax Mam on 2/1/19.
//  Copyright © 2019 Lax Mam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var index1 : Int = 0
    var index2 : Int = 0
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    var diceArray = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollerDice()
    }
    
    @IBAction func rollerDice() {
        print("roll button")
        index1 = Int(arc4random_uniform(6))
        index2 = Int(arc4random_uniform(6))
        
        imageOne.image=UIImage(named: diceArray[index1])
        imageTwo.image=UIImage(named: diceArray[index2])
    }
    
    
    
}

