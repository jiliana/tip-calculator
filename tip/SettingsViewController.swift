//
//  SettingsViewController.swift
//  tip
//
//  Created by Yana Tiu on 12/2/20.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    @IBOutlet weak var defaultTipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func changeDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        defaults.set(Double(tip1.text!), forKey: "tip1")
        defaults.set(Double(tip2.text!), forKey: "tip2")
        defaults.set(Double(tip3.text!), forKey: "tip3")
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
