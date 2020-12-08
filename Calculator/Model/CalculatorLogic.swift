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

//class CalculatorLogic {
//
//    var number: Double
//
//    init(number: Double) {
//        self.number = number
//    }
//    func calculate(symbol: String) -> Double? {
//
//        if symbol == "+/-" {
//            return number * -1
//        } else if symbol == "AC" {
//            return 0
//        } else if symbol == "%" {
//            return number * 0.01
//        } else {
//            return nil
//        }
//    }
//}

struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumberCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        return nil
    }
}
