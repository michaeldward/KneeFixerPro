//
//  ViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 3/16/17.
// Consultant Steven Simcox PHD
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class TherapistViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Exercise Select"
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
        cell.textLabel?.text = exerciseList.exercises[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseList.exercises.count
    }
}

extension TherapistViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let exerciseVC = storyboard?.instantiateViewController(withIdentifier: "exerciseVCI") as? TDisplayVC {
            exerciseVC.title = exerciseList.exercises[indexPath.row].title
            exerciseVC.num = indexPath.row
            navigationController?.pushViewController(exerciseVC, animated: true)
        }
        self.tableView.reloadData()
    }
}

