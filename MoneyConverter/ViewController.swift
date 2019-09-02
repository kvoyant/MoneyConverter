//
//  ViewController.swift
//  MoneyConverter
//
//  Created by APPLE on 03/09/2019.
//  Copyright © 2019 yhkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencySegment: UISegmentedControl!
    @IBOutlet weak var sourceMoneyField: UITextField!
    @IBOutlet weak var targetMoneyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertMoney(_ sender: Any) {
        let ratio : Double
        switch currencySegment.selectedSegmentIndex {
        case 0:
            ratio = 0.00085
        case 1:
            ratio = 1178.5
        default:
            ratio = 1.0
        }
        
        let targetMoneyString:String
        if let sourceMoney = Double(sourceMoneyField.text!) {
            targetMoneyString = "\(sourceMoney * ratio)"
        } else {
            targetMoneyString = "Error"
        }
        
        targetMoneyLabel.text = targetMoneyString
    }
}

