//
//  EDisplayVC.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/3/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class EDisplayVC: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var text = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

