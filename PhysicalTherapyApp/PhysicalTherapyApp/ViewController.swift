//
//  ViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 3/16/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    //let exercises = ["Knee flexion", "Knee extension", "Heel slides", "Hamstring stretch", "Isometric quadriceps exercise", "Step ups", "Leg lifts", "Shuttle runs", "Figure 8's", "Suicides", "Single-leg balances", "Wobble-board", "Step downs", "Stationary biking", "Half-squat", "Partial-lunges", "Heel raises"]
    @IBOutlet weak var viewTable: UITableView!
        
    @IBAction func refresh(_ sender: Any) {
        viewTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Exercises"
        
        viewTable.reloadData() //happens to early - data isn't loaded yet
      
        // Do any additional setup after loading the view, typically from a nib.
        DispatchQueue.main.async
        {
            self.viewTable.reloadData()
            self.viewWillAppear(true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewTable.reloadData()
    }
}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = exercises[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }


}

extension ViewController: UITableViewDelegate {
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let scheduleVC = storyboard?.instantiateViewController(withIdentifier: "exerciseVCII") as? EDisplayVC {
                scheduleVC.title = exercises[indexPath.row].title
                scheduleVC.text = exercises[indexPath.row].description
                scheduleVC.times = exercises[indexPath.row].times
                scheduleVC.done = exercises[indexPath.row].done
                navigationController?.pushViewController(scheduleVC, animated: true)
            }
        }
    
    
}

