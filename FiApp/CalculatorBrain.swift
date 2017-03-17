//
//  CalculatorBrain.swift
//  FiApp
//
//  Created by Atunit_Creative07 on 2017/3/17.
//  Copyright © 2017年 CrazyLazy. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    private var accumulator: Double?
    func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumulator = Double.pi
        case "√":
            accumulator = sqrt(DisplayText)
        default:
            break
        }
    }
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
        
    }
    var result: Double? {
        get {
            return accumulator
        }
    }
}
