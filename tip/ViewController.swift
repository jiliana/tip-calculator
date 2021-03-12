//
//  ViewController.swift
//  tip
//
//  Created by Yana Tiu on 12/1/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tipControl.setTitle("15%", forSegmentAt: 0)
        tipControl.setTitle("18%", forSegmentAt: 1)
        tipControl.setTitle("20%", forSegmentAt: 2)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        let title1 = defaults.string(forKey: "tip1") ?? "15"
        tipControl.setTitle("\(title1)%", forSegmentAt: 0)
        let title2 = defaults.string(forKey: "tip2") ?? "18"
        tipControl.setTitle("\(title2)%", forSegmentAt: 1)
        let title3 = defaults.string(forKey: "tip3") ?? "20"
        tipControl.setTitle("\(title3)%", forSegmentAt: 2)
        
        calculateFunc()

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        billAmountTextField.becomeFirstResponder()
        print("view did appear")
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        calculateFunc()
        
    }
    
    fileprivate func getDefaultPercentage(_ defaults: UserDefaults,key: String, defaultPercentage: Double) -> Double {
        var title = 0.01 * defaults.double(forKey: key)
        if ((0.01 * defaults.double(forKey: key)) == 0.0) {
            title = defaultPercentage
        }
        return title
    }
    
    fileprivate func calculateFunc() {
        let defaults = UserDefaults.standard
        

        let bill = Double(billAmountTextField.text!) ?? 0
        
        var title1 = 0.01 * defaults.double(forKey: "tip1")
        if ((0.01 * defaults.double(forKey: "tip1")) == 0.0) {
            title1 = 0.15
        }
        
        let title2 = getDefaultPercentage(defaults,key: "tip2", defaultPercentage: 0.18)
        
        var title3 = 0.01 * defaults.double(forKey: "tip3")
        if ((0.01 * defaults.double(forKey: "tip3")) == 0.0) {
            title3 = 0.20
        }
        
        let tipPercentages = [title1, title2, title3]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

