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

    @IBAction func performOperation(_ sender: UIButton) {
        UserIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                DisplayText = Double.pi
            case "√":
                DisplayText = sqrt(DisplayText)
            default:
                break
            }
        }
    }
    
}

