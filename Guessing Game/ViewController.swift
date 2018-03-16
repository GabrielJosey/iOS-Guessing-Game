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
    
    @IBOutlet weak var thumbsUp: UIImageView!
    
    @IBOutlet weak var theCount: UIImageView!
    
    @IBOutlet weak var failMonkey: UIImageView!
    
    
    var randomNumber = Int(arc4random_uniform(10))
    var userGuess: Int!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        thumbsUp.isHidden = true
        theCount.isHidden = false
        failMonkey.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var guesses = 0
    
    @IBAction func guessButtonPressed(_ sender: Any) {
        
        
        userGuess = Int(userGuessField.text!)
        
        if guesses == 4 {
            view.endEditing(true)
            theCount.isHidden = true
            thumbsUp.isHidden = true
            failMonkey.isHidden = false
            guesses = 5
            userGuessField.isEnabled = false
            userFeedback.text = "Oh! So close! You ran out of tries. Tap the monkey to try again."
        } else if userGuessField.text == "" {
            userFeedback.text = "Please enter a number"
        } else if Int(userGuessField.text!)! > randomNumber {
            userFeedback.text = "Too High. Guess again."
            guesses += 1
            //userGuessField.text = ""
        } else if Int(userGuessField.text!)! < randomNumber {
            userFeedback.text = "Too low. Bump your guess up!"
            guesses += 1
            // userGuessField.text = ""
        } else if Int(userGuessField.text!)! == randomNumber {
            userFeedback.text = "WAY TO GO! You guessed the number! Tap the monkey to play again."
            view.endEditing(true)
            theCount.isHidden = true
            thumbsUp.isHidden = false
            guesses = 5
            
        }
        
        userGuessField.text = ""
    }
    
    
    
    @IBAction func resetGame(_ sender: Any) {
        thumbsUp.isHidden = true
        failMonkey.isHidden = true
        theCount.isHidden = false
        theCount.transform.rotated(by: 0.55)
        userFeedback.text = ""
        randomNumber = Int(arc4random_uniform(10))
        guesses = 0
        userGuessField.isEnabled = true
        
    }
    
    
    
    
    
    
    
    
}
