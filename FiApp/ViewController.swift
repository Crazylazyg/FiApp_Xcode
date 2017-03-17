//
//  ViewController.swift
//  FiApp
//
//  Created by Atunit_Creative07 on 2017/3/15.
//  Copyright © 2017年 CrazyLazy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var UserIsInTheMiddleOfTyping = false

    @IBOutlet weak var display: UILabel!
    
    var DisplayText: Double {
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func NumberButton(_ sender: UIButton) {
        let Number = sender.currentTitle!
        let textCurrentInDisplay = display.text!
        if UserIsInTheMiddleOfTyping{
            display.text = textCurrentInDisplay + Number
        }else{
            display.text = Number
            UserIsInTheMiddleOfTyping = true
        }
        
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if UserIsInTheMiddleOfTyping {
            brain.setOperand(DisplayText)
            UserIsInTheMiddleOfTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            DisplayText = result
        }
    }
    
}

