//
//  Exercise.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/2/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation

class Exercise {
    var title: String
    var text: String
    var used: Bool
    
    init(title: String, description: String, assigned: Bool) {
        self.title = title
        self.text = description
        self.used = assigned
    }
    
}
