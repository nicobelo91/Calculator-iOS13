//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Nico Cobelo on 05/12/2020.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import UIKit

struct CalculatorLogic {
    
    func calculateValue(_ sender: UIButton, _ displayValue: Double, _ displayLabel: UILabel) {
        
        var displayValue: Double = displayLabel.text!
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayValue *= -1
            } else if calcMethod == "AC" {
                displayLabel.text = String(0)
            } else if calcMethod == "%" {
                displayValue *= 0.01
            }
        }
    }
}
