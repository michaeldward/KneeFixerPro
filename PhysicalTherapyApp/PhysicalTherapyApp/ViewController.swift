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
    
    var ref: FIRDatabaseReference!
    
    var snapshot: FIRDataSnapshot!
    
    var exercises: [ExerciseNew] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FIRApp.configure()
        self.title = "Exercises"
        exerciseList.addElement(newElement: Exercise(title: "Knee flexion", description: "Initiate sagittal plane plyometrics, work towards single leg plyometrics.Clearance by MD and pass Sportsmetric training before returning to full athletics. NOTE: All progressions are approximations and should be used as a guideline only. Progression will be based on individual patient presentation, which is assessed throughout the treatment process.", assigned: false, index: 0))
        exerciseList.addElement(newElement: Exercise(title: "Knee extension", description: "Rehabilitation for the injured knee begins immediately following ACL injury. The clinical goals for Phase I include restoring full range of motion (ROM) and normal strength and control swelling prior to surgery. Patients are also to completely understand the basic principles of accelerated rehabilitation including full terminal knee extension, early weight bearing, and closed and open chain strengthening. The time needed to accomplish these goals can be as little as 1 week or as long as 2 months, depending on how the knee responds to the initial injury.", assigned: false, index: 1))
        exerciseList.addElement(newElement: Exercise(title: "Heel slides", description: "Sit on the floor with legs outstretched. Slowly bend the knee of your injured leg while sliding your heel/foot across the floor toward you. Slide back into the starting position and repeat 10 times.", assigned: false, index: 2))
        exerciseList.addElement(newElement: Exercise(title: "Isometric contraction", description: "Sit on the floor with your injured leg straight and your other leg bent. Contract the quadriceps of the injured knee without moving the leg. (Press down against the floor). Hold for 10 seconds. Relax. Repeat 10 times.", assigned: false, index: 2))
        exerciseList.addElement(newElement: Exercise(title: "Half-Squat", description: "Stand holding a sturdy table with both hands. With your feet placed shoulder’s width apart, slowly bend your knees and squat, lowering your hips into a half-squat. Hold 10 seconds and then slowly return to a standing position. Repeat 10 times.", assigned: false, index: 3))
        exerciseList.addElement(newElement: Exercise(title: "Partial Lunges", description: "Stand holding a sturdy table with both hands. With your feet placed shoulder’s width apart, take a half step forward, keeping your weight evenly distributed. Slowly bend your knees and sink down slightly. Hold 10 seconds and then slowly return to a standing position. Repeat on the other side. Do 10 times per side.", assigned: false, index: 4))
        exerciseList.addElement(newElement: Exercise(title: "Heel Raises", description: "While standing, place your hand on a counter or back of a chair for balance. Raise up onto your toes and hold for five seconds. Slowly lower your heel to the floor and repeat 10 times.", assigned: false, index: 5))
        //get exercises from Firebase database
        ref = FIRDatabase.database().reference(withPath: "exercises")
        ref.observe(.value, with: { snapshot in
            var newExercises: [ExerciseNew] = []
            
            for item in snapshot.children
            {
                let exerciseItem = ExerciseNew(snapshot: item as! FIRDataSnapshot)
                newExercises.append(exerciseItem)
            }
            self.exercises = newExercises
            print(self.exercises.count)
        })
        viewTable.reloadData()
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
    
    func refresh()
    {
        
    }
}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel?.text = exerciseList.getActive()[indexPath.row].title
        cell.textLabel?.text = exercises[indexPath.row].title
        print(exercises[indexPath.row].title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return exerciseList.getActiveCount()
        return exercises.count
    }


}

/*extension ViewController: UITableViewDelegate {
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let scheduleVC = storyboard?.instantiateViewController(withIdentifier: "exerciseVCII") as? EDisplayVC {
                scheduleVC.title = exerciseList.getActive()[indexPath.row].title
                scheduleVC.text = exerciseList.getActive()[indexPath.row].text
                navigationController?.pushViewController(scheduleVC, animated: true)
            }
        }
    
    
}*/

