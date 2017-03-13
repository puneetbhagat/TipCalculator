//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Bhagat, Puneet on 3/12/17.
//  Copyright © 2017 Puneet Bhagat. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let _defaults = UserDefaults.standard
        let _defaultTipPercentage = _defaults.integer(forKey: "default_tip_percentage")
        
        defaultTipControl.selectedSegmentIndex = (_defaultTipPercentage)
        
        setDefaultTipPercentage(Any.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setDefaultTipPercentage(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(defaultTipControl.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
