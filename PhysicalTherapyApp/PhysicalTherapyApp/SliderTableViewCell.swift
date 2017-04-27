//
//  SliderTableViewCell.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/26/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class SliderTableViewCell : UITableViewCell
{
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var valSlider: UISlider!
    
    @IBOutlet weak var valLabel: UILabel!
    
    @IBAction func sliderValChanged(_ sender: UISlider) {
        var currentValue = Int(sender.value)
        
        valLabel.text = "\(currentValue)"
    }
    
    
}
