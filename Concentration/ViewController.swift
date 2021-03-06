//
//  ViewController.swift
//  Concentration - Lesson 2
//
//  Created by Thomas Hill on 9/29/2018.
//  Copyright © 2018 Computer Magic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration()
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {  //Read from array - Unwrap  Optional
            flipCar(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("No Card")
        }
    }
    
    func flipCar(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.orange
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
    }
    
}

