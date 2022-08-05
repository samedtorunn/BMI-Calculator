//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sam on 21.06.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var height : Float
    var weight : Float
    var bmiValue = "0.0"
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float , weight: Float){
        
        self.height = height
        self.weight = weight
        
        let bmiValue = weight/(height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: UIColor.blue)
            
        } else if 24.9 > bmiValue && bmiValue > 18.5 {
             
            bmi = BMI(value: bmiValue, advice: "You are OK, no worries", color: UIColor.green)
        } else {
            
            bmi = BMI(value: bmiValue, advice: "Stop eating immediately. Go to sports.", color: UIColor.systemPink)
        }
        
    }
    
    mutating func getBMIValue() -> String {
        
    
        bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiValue
        
    }
    
    mutating func getAdvice() -> String {
        
        let advice = bmi?.advice
        return advice ?? "No advice for you"
        
    }
    
    mutating func getColor() -> UIColor {
        
        let color = bmi?.color
        return color ?? UIColor.white 
        
    }
}
