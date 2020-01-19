//
//  ViewController.swift
//  Lailah Weatherspoon Tip Calculator
//
//  Created by Apayo Apayo on 1/18/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets that you want to be able to control
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        //makes keyboard go away
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get the bill now
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }
}

