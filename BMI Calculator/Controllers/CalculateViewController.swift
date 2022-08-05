//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved./Users/macbook/Desktop/iOS - Swift - The Complete iOS App Development Bootcamp/Development/BMI-Calculator-iOS13/BMI Calculator/Controllers/ViewController.swift
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    var calculatorBrain = CalculatorBrain(height: 0.0, weight: 0.0)

    @IBOutlet weak var heightNumber: UILabel!
    
    @IBOutlet weak var weightNumber: UILabel!
    
    @IBOutlet weak var heightBar: UISlider!
    
    @IBOutlet weak var weightBar: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        calculatorBrain.height = sender.value // "\(String(format: "%.2f", sender.value))"
        
        heightNumber.text = "\(String(format: "%.2f", calculatorBrain.height)) m"
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        calculatorBrain.weight = sender.value
        
        weightNumber.text = "\(String(format: "%.0f", calculatorBrain.weight)) Kg"
        
    }
        
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightBar.value
        let weight = weightBar.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue1 = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }

    } 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


