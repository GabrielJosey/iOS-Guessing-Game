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
    
    
    var randomNumber = Int(arc4random_uniform(10))
    var userGuess: Int!
    
    var rulesText = """
    Guess a number between 1 and 10.
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
        
        var guesses = 0
        userGuess = Int(userGuessField.text!)
        
        while guesses <= 5 {
            if userGuessField == nil {
                userFeedback.text = "Please enter a valid number"
            } else if Int(userGuessField.text!)! > randomNumber {
                userFeedback.text = "Too High. Guess again."
                guesses += 1
            } else if Int(userGuessField.text!)! < randomNumber {
                userFeedback.text = "Too low. Bump your guess up!"
                guesses += 1
            } else if Int(userGuessField.text!)! == randomNumber {
                userFeedback.text = "WAY TO GO!"
                guesses = 5
            } 
        }
        
    }
    
}
