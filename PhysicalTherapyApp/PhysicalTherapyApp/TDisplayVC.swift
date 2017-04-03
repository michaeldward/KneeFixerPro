//
//  TDisplayVC.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/2/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class TDisplayVC: UIViewController {
    

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var selected: UISwitch!
    
    @IBAction func switchAction(_ sender: Any) {
        if selected.isOn
        {
            exerciseList.exercises[num].used = true
            //ViewController().reloadTable()
            //ViewController().viewTable.reloadData()
            //TherapistViewController().tableView.reloadData()
        }
        else
        {
            exerciseList.exercises[num].used = false
            //ViewController().reloadTable()
            //ViewController().viewTable.reloadData()
        }
    }
    
    var num = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = exerciseList.exercises[num].text
        selected.isOn = exerciseList.exercises[num].used
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
