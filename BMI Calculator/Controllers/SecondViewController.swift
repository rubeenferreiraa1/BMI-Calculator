//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Ruben Ferreira on 22/04/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame =  CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
}
