//
//  ViewController.swift
//  Guessing Game
//
//  Created by Gabriel Josey on 3/8/18.
//  Copyright © 2018 Gabriel Josey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessField: UITextField!
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var userFeedback: UILabel!
    
    
    var randomNumber = Int(arc4random_uniform(100))
    var userGuess: Int!
    
    var rulesText = """
    Guess a number between 1 and 100.
    You have 5 tries to guess the correct number.
    You will be told if the number is higher or lower.
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rulesLabel.text = rulesText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessButtonPressed(_ sender: Any) {
        
        userGuess = Int(userGuessField.text!)
        print(userGuess)
    }
    

}

