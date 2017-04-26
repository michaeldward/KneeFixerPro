//
//  ExerciseNew.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/18/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation
import Firebase

class ExerciseNew {
    var title: String
    //var text: String
    //var used: Bool
    var times: String
    var done: Int
    //var index: Int
    var key: String
        var description: String
    let ref: FIRDatabaseReference?
    
    /*init(title: String, description: String, assigned: Bool, index: Int) {
        self.title = title
        self.text = description
        self.used = assigned
        self.times = 0
        self.timesLeft = 0
        self.index = index
    }*/
    
    init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["exercise"] as! String
        times = snapshotValue["times"] as! String
        description = snapshotValue["description"] as! String
        done = snapshotValue["done"] as! Int
        ref = snapshot.ref
    }
    
}
