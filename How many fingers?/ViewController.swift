//
//  ViewController.swift
//  How many fingers?
//
//  Created by Daniel Colangelo on 4/13/16.
//  Copyright © 2016 Daniel Colangelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        let diceRoll = String(arc4random_uniform(6))
        if diceRoll  == number.text {
            result.text = "You got it!!"
        } else if diceRoll != number.text {
            result.text = "Try again.."
        }
        
    }
    
    @IBOutlet weak var result: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

