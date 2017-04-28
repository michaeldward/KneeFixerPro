//
//  CheckupTableViewCell.swift
//  
//
//  Created by Michael Ward on 4/27/17.
//
//

import Foundation
import UIKit


class CheckupTableViewCell : UITableViewCell
{
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var valLabel: UILabel!
    
    
    @IBAction func sliderValChanged(_ sender: UISlider)
    {
        var currentValue = Int(sender.value)
        
        valLabel.text = "\(currentValue)"
    }
    
}
