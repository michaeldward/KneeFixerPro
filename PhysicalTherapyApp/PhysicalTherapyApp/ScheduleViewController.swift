//
//  ScheduleViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/3/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var viewTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Schedule"
        
        // Do any additional setup after loading the view, typically from a nib.
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

extension ScheduleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let intTimes = Int(exercises[indexPath.row].times)
        let timesToDo = intTimes! - exercises[indexPath.row].done
        var end: String
        if timesToDo == 1
        {
            end = " time per day"
        }
        else
        {
            end = " times per day"
        }
        let txt = exercises[indexPath.row].title + " " + String(timesToDo) + end
        cell.textLabel?.text = txt
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
}


extension ScheduleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let scheduleVC = storyboard?.instantiateViewController(withIdentifier: "scheduleVCI") as? SDisplayVC {
            scheduleVC.title = exercises[indexPath.row].title
            scheduleVC.toDo = Int(exercises[indexPath.row].times)! - Int(exercises[indexPath.row].done)
            scheduleVC.exercise = indexPath.row
            navigationController?.pushViewController(scheduleVC, animated: true)
        }
    }
    
    
}
