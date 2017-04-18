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
    //var done: String
    //var index: Int
    var key: String
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
        //done = snapshotValue["done"] as! String
        ref = snapshot.ref
    }
    
}
