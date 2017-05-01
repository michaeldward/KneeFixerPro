//
//  SDisplayVC.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/3/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class SDisplayVC: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    
    var toDo = 0
    var exercise = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

extension SDisplayVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if toDo == 0
        {
            cell.textLabel?.text = "You are done for the day! Good job!"
        }
        else
        {
            cell.textLabel?.text = "Do the exercise!"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if toDo == 0
        {
            return 1
        }
        else
        {
            return toDo
        }
    }
    
    
}

extension SDisplayVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if (toDo > 0)
            {
                 toDo = toDo - 1
                exercises[exercise].done = exercises[exercise].done + 1
            }
            self.tableView.reloadData()
        }
}

    
