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
        let times = exerciseList.getActive()[indexPath.row].times
        var end: String
        if times == 1
        {
            end = " time per day"
        }
        else
        {
            end = " times per day"
        }
        let txt = exerciseList.getActive()[indexPath.row].title + " " + String(times) + end
        cell.textLabel?.text = txt
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseList.getActiveCount()
    }
    
}


extension ScheduleViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let scheduleVC = storyboard?.instantiateViewController(withIdentifier: "scheduleVCI") as? SDisplayVC {
            scheduleVC.title = exerciseList.getActive()[indexPath.row].title
            scheduleVC.toDo = exerciseList.getActive()[indexPath.row].times
            navigationController?.pushViewController(scheduleVC, animated: true)
        }
    }
    
    
}
