//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by MacBook Air on 13/09/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var bmiOutlet: UILabel!
    @IBOutlet weak var adviceOutlet: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiOutlet.text = bmiValue
        adviceOutlet.text = advice
        resultBackground.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
}
