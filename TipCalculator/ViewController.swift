//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vishesh khanna on 26/12/16.
//  Copyright © 2016 Anmol Khanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitControl: UISlider!
    
    
    @IBOutlet weak var splitLabel: UILabel!
    
    
    @IBOutlet weak var splitValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.billField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)

    }
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentage = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip

        let s = total / Double(roundf(splitControl.value * 1.0) * 1)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", s)
        splitValue.text = String(format: "%.1f", roundf(splitControl.value * 1.0) * 1)
        
    }
}

