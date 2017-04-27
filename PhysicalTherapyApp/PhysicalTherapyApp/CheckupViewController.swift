//
//  CheckupViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/26/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class CheckupViewController: UIViewController
{
    var names = ["Yo"]
}

extension CheckupViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

}
extension CheckupViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
    }
    
    
}
