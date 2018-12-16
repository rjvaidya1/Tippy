//
//  ViewController.swift
//  Tipped
//
//  Created by Raj Vaidya on 12/16/18.
//  Copyright © 2018 Raj Vaidya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipAmtLabel: UILabel!
    @IBOutlet weak var TotalAmtLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        let TipPercentages = [0.15, 0.18, 0.20]
        
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * TipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmtLabel.text = String(format: "$%.2f", tip)
        TotalAmtLabel.text = String(format: "$%.2f", total)
    }




}

