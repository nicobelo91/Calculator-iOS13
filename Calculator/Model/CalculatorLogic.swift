//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Nico Cobelo on 05/12/2020.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

//struct CalculatorLogic {
//
//    func calculate(_ sender: UIButton, _ displayValue: Double, _ displayLabel: UILabel) {
//
//        var displayValue: Double
//
//        if let calcMethod = sender.currentTitle {
//            if calcMethod == "+/-" {
//                displayValue *= -1
//            } else if calcMethod == "AC" {
//                displayLabel.text = String(0)
//            } else if calcMethod == "%" {
//                displayValue *= 0.01
//            }
//        }
//    }
//}

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        } else {
            return nil
        }
    }
}
