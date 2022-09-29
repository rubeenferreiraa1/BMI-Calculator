//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calulatorBrain = calculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = sender.value
        let roundedValue = round(value * 100) / 100.0
        heightLabel.text = "\(Float(roundedValue))m"
    }
    
    @IBAction func weighSliderChanged(_ sender: UISlider) {
        
        let value = sender.value
        let roundedValue = round(value * 100) / 100.0
        weightLabel.text = "\(Float(roundedValue))kg"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calulatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destanationVC = segue.destination as! ResultViewController
            destanationVC.bmiValue = calulatorBrain.getBMIValue()
            destanationVC.advice = calulatorBrain.getAdvice()
            destanationVC.color = calulatorBrain.getColor()
            
        }
    }
    
}

