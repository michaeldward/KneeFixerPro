//
//  TDisplayVC.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/2/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class TDisplayVC: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var selected: UISwitch!
    
    @IBOutlet weak var lbl: UITextField!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBAction func stepper(_ sender: UIStepper) {
        let val = Int(sender.value)
        lbl.text = val.description
        if val == 0
        {
            exerciseList.exercises[num].used = false
            //switch1.isOn = false
            switch1.setOn(false, animated: true)
            exerciseList.exercises[num].times = val
        }
        else
        {
            
            exerciseList.exercises[num].used = true
            //switch1.isOn = true
            switch1.setOn(true, animated: true)
            exerciseList.exercises[num].times = val
        }
        
    }
    
    @IBAction func switchAction(_ sender: Any) {
        if selected.isOn
        {
            exerciseList.exercises[num].used = true
            stepper.value = 1
            exerciseList.exercises[num].times = 1
            lbl.text = "1"
            //ViewController().reloadTable()
            //ViewController().viewTable.reloadData()
            //TherapistViewController().tableView.reloadData()
        }
        else
        {
            exerciseList.exercises[num].used = false
            stepper.value = 0
            exerciseList.exercises[num].times = 0
            lbl.text = "0"
            //ViewController().reloadTable()
            //ViewController().viewTable.reloadData()
        }
    }
    
    var num = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = exerciseList.exercises[num].text
        selected.isOn = exerciseList.exercises[num].used
        lbl.text = "0"
        stepper.maximumValue = 6
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
