//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var winTextLabel: UILabel!
    @IBOutlet weak var loseTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArr: [UIImage] = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // First Temp - Use Random Numbers to get the value in the array
//        let dice1: Int = Int(Int.random(in: 0...5))
//        let dice2: Int = Int(Int.random(in: 0...5))
        
        let dice1 = diceArr.randomElement()
        let dice2 = diceArr.randomElement()
        
        // First Temp - Get the image from the array using the index of generated random numbers
//        diceImageView1.image = diceArr[dice1]
//        diceImageView2.image = diceArr[dice2]
        
        diceImageView1.image = dice1
        diceImageView2.image = dice2
        
        if dice1 == dice2 {
            winTextLabel.text = String(Int(winTextLabel.text!)! + 1)
        } else {
            loseTextLabel.text = String(Int(loseTextLabel.text!)! + 1)
        }
    }
}
