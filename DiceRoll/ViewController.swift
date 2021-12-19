//
//  ViewController.swift
//  Swift DiceRoll
//
//  Created by 平林 宏淳 on 2021/02/13.
//  Copyright © 2021 Hiroaki Hirabayashi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet private weak var diceImageView1: UIImageView!
    @IBOutlet private weak var diceImageView2: UIImageView!
    
    private var leftDiceNumber = 1
    private var rightDiceNumber = 5
    private var diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0 ... 5)]
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
        
        print(Int.random(in: 1...10))
        
    }
    
}

