//
//  Exercises.swift
//  PhysicalTherapyApp
//
//  Created by Michael Ward on 4/2/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation


class ExerciseList
{
    
    var exercises = [Exercise]()
    
    func addElement(newElement: Exercise)
    {
        exercises.append(newElement)
    }
    
    func getActive() -> Array<Exercise>
    {
        var newArr = [Exercise]()
        for i in exercises
        {
            if i.used == true
            {
                newArr.append(i)
            }
        }
        return newArr
    }
    
    func getActiveCount() -> Int
    {
        var count = 0
        for i in exercises
        {
            if i.used == true
            {
                count = count + 1
            }
        }
        return count
    }
}
