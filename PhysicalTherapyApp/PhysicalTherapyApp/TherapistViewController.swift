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
    
    @IBOutlet weak var viewTable: UITableView!
    
    var names = ["Pain", "Stiffness", "Swelling", "Weakness", "Limping"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Checkup"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension TherapistViewController: UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print(names[indexPath.row])
        //let cell = tableView.dequeueReusableCell(withIdentifier: "SliderCell") as! SliderTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "SliderCell", for: indexPath) as! SliderTableViewCell
        cell.nameLabel?.text = names[indexPath.row]
        //var cell = SliderTableViewCell()
        //cell.nameLabel?.text = names[0]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return names.count
    }
    
    
}
