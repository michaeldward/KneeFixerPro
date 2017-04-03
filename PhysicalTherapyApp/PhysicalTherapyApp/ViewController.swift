//
//  ViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 3/16/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    //let exercises = ["Knee flexion", "Knee extension", "Heel slides", "Hamstring stretch", "Isometric quadriceps exercise", "Step ups", "Leg lifts", "Shuttle runs", "Figure 8's", "Suicides", "Single-leg balances", "Wobble-board", "Step downs", "Stationary biking", "Half-squat", "Partial-lunges", "Heel raises"]
    @IBOutlet weak var viewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loading")
        exerciseList.addElement(newElement: Exercise(title: "Knee flexion", description: "flex the knee", assigned: true))
         exerciseList.addElement(newElement: Exercise(title: "ski exercise", description: "have ben use his skiis", assigned: false))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refresh()
    {
        
    }
}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = exerciseList.getActive()[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseList.getActiveCount()
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            self.viewTable.reloadData() //can't go out of this function for some reason
        }
    
}

