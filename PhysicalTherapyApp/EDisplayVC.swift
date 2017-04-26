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
    
    @IBOutlet weak var label: UILabel!
    
    var text = ""
    var times = ""
    var done = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var doneStr = String(done)
        self.label.text = "Done " + doneStr + "/" + times + " times"
        self.textView.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

