//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ryan Jones on 5/3/15.
//  Copyright (c) 2015 Ryan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let humanYearsInt = humanYearsTextField.text.toInt()
        let conversionRate = 7
        let dogYears = humanYearsInt! * 7
        dogYearsLabel.text = "\(dogYears)"
        dogYearsLabel.hidden = false
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func ConvertToRealDogYearsButtonPressed(sender: UIButton) {
        let humanYearsInt = humanYearsTextField.text.toInt()
        dogYearsLabel.hidden = false
        var dogYears:Double
        if humanYearsInt <= 2{
            dogYears = Double(humanYearsInt!) * 10.5
        }else{
            var x = humanYearsInt! - 2
            dogYears = (2 * 10.5) + (Double(x) * 4)
        }
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
        dogYearsLabel.text = "\(dogYears)"
    }
}

