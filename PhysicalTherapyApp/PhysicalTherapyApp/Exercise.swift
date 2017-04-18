//
//  Exercise.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/2/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation
import Firebase

class Exercise {
    var title: String
    var text: String
    var used: Bool
    var times: Int
    var timesLeft: Int
    var index: Int
    
    init(title: String, description: String, assigned: Bool, index: Int) {
        self.title = title
        self.text = description
        self.used = assigned
        self.times = 0
        self.timesLeft = 0
        self.index = index
    }
    
    /*init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        addedByUser = snapshotValue["addedByUser"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
    }*/
    
}
