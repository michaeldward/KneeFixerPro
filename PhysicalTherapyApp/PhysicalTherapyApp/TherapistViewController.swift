//
//  ViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 3/16/17.
// Consultant Steven Simcox PHD
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class TherapistViewController: UIViewController {
    
    
    @IBOutlet weak var painSlider: UISlider!
    
    @IBOutlet weak var stiffnessSlider: UISlider!
    
    @IBOutlet weak var painVal: UILabel!
    
    @IBOutlet weak var stiffnessVal: UILabel!
    
    @IBAction func painValueChanged(_ sender: UISlider) {
        var painValue = Int(sender.value)
        painVal.text = "\(painValue)"
    }
    
    @IBAction func stiffnessValueChanged(_ sender: UISlider) {
        var currentVal = Int(sender.value)
        
        stiffnessVal.text = "\(currentVal)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Checkup"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

