//
//  TestViewController.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/26/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation
import UIKit

class TestViewController : UIViewController
{
    
    var items = ["1", "2", "3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Test" //not working
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

extension TestViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
}
