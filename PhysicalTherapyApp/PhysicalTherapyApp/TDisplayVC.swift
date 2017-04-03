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
    
    var txt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = txt
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
