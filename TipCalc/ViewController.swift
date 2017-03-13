//
//  ViewController.swift
//  TipCalc
//
//  Created by Bhagat, Puneet on 3/12/17.
//  Copyright © 2017 Puneet Bhagat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var setAsDefault: UIView!
    @IBOutlet weak var saveAsDefaultSwitch: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let _defaults = UserDefaults.standard
        let _defaultTipPercentage = _defaults.integer(forKey: "default_tip_percentage")
        
        setAsDefault.isHidden = tipControl.selectedSegmentIndex == _defaultTipPercentage
        
        billField.becomeFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let _defaults = UserDefaults.standard
        let _defaultTipPercentage = _defaults.integer(forKey: "default_tip_percentage")
        
        tipControl.selectedSegmentIndex = (_defaultTipPercentage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        let _tipPercentages = [0.10, 0.15, 0.20]
        
        let _billText = billField.text!
        let _bill = Double(_billText) ?? 0
        let _tip = _bill * _tipPercentages[tipControl.selectedSegmentIndex]
        let _total = _bill + _tip
        
        tipLabel.text = String(format: "$%.2f", _tip)
        totalLabel.text = String(format: "$%.2f", _total)
    }
    
    @IBAction func updateTipAmount(_ sender: Any) {
        calculateTip(Any.self)
        
        let _defaults = UserDefaults.standard
        let _defaultTipPercentage = _defaults.integer(forKey: "default_tip_percentage")
        
        setAsDefault.isHidden = tipControl.selectedSegmentIndex == _defaultTipPercentage
        
    }
    
    @IBAction func setAsDefault(_ sender: Any) {
        if(saveAsDefaultSwitch.isOn) {
            let defaults = UserDefaults.standard
            defaults.set(tipControl.selectedSegmentIndex, forKey: "default_tip_percentage")
            defaults.synchronize()
        
            let delayInSeconds = 0.5
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
                // here code perfomed with delay
                self.setAsDefault.isHidden = true
                self.saveAsDefaultSwitch.isOn = false
            }
        }
    }
    
}

