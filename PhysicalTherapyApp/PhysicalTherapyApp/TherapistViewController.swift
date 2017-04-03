//
//  ViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 3/16/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class TherapistViewController: UIViewController {
    
    //let exercises = ["Ben Rider", "Mike Ward", "Seth Richter"]
    let exercises = ["Knee flexion", "Knee extension", "Heel slides", "Hamstring stretch", "Isometric quadriceps exercise", "Step ups", "Leg lifts", "Shuttle runs", "Figure 8's", "Suicides", "Single-leg balances", "Wobble-board", "Step downs", "Stationary biking", "Half-squat", "Partial-lunges", "Heel raises"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



extension TherapistViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = exercises[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
}
