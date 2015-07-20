//
//  ViewController.swift
//  Primes
//
//  Created by Dorian Scheidt on 2015-07-20.
//  Copyright (c) 2015 Dorian Listens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let calculator = PrimeCalculator()
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func submitButtonPressed(sender: AnyObject) {
        if var inputNumber = numberInput.text.toInt() {
            resultLabel.text = isItPrime(inputNumber)
        } else {
            resultLabel.text = "Please enter a number to test"
        }
    }
    
    func isItPrime(number: Int) -> String {
        if calculator.prime(number) {
            return "Yes, \(number) is Prime!"
        } else {
            return "No, \(number) is not Prime."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

