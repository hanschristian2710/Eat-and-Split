//
//  ViewController.swift
//  Eat and Split
//
//  Created by Hans Christian on 08/17/16.
//  Copyright © 2016 CHR27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Initialize outlets and variables from UI
    @IBOutlet weak var eachAmount: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    @IBOutlet weak var bText: UILabel!
    @IBOutlet weak var tText: UILabel!
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var totalText: UILabel!
    @IBOutlet weak var billTaxText: UILabel!
    @IBOutlet weak var eachTipText: UILabel!
   
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var salesTax: UITextField!
    @IBOutlet weak var numberParty: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ACTIONS
    
    // Dismiss Keyboard when tapped at any of the screen area
    @IBAction func dismissKeyboard(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    // Stepper for number of party
    @IBAction func stepper(_ sender: AnyObject) {
        numberParty.text = "\(Int(stepper.value))"
    }
    
    @IBAction func calculateEach(_ sender: AnyObject) {
        let tipSelection = [0.1, 0.15, 0.18, 0.2, 0.25]
        let bAmount = Double(billAmount.text!) ?? 0
        let tax = Double(salesTax.text!) ?? 0
        let numPeople = Int(numberParty.text!) ?? 0
        
        let preTotal = (bAmount * (tax/100)) + bAmount
        let tip = (preTotal * tipSelection[tipPercentage.selectedSegmentIndex])
        let total = Double((preTotal + tip)/(Double(numPeople)))
        
        bText.text = String(format: "$%.2f", bAmount)
        tText.text = String(format: "$%.2f", Double(bAmount * (tax/100)))
        tipText.text = String(format: "$%.2f", tip)
        totalText.text = String(format: "$%.2f", preTotal+tip)
        
        eachAmount.text = String(format: "$%.2f", total)
        
        let eachTotalNoTip = Double((preTotal)/(Double(numPeople)))
        billTaxText.text = String(format: "$%.2f", eachTotalNoTip)
        let eachTip = Double((tip)/(Double(numPeople)))
        eachTipText.text = String(format: "$%.2f tip", eachTip)
    }
    
}

