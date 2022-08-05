//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sam on 21.06.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue1 : String?
    var advice : String?
    var color : UIColor?
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var suggestionLabel: UILabel!
    
    @IBOutlet weak var bmiValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValue.text = bmiValue1!
        suggestionLabel.text = advice
        view.backgroundColor = color
        
        
        
        // Do any additional setup after loading the view.
    }
    



}
