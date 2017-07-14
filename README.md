# KneeFixerPro
Application will help therapists perscribe exercises for patients and help to track patients' progress on those exercises.  
Website backend is currently being redesigned; code for the website can be found in <a href="https://github.com/mikethebro/KneeFixerPro-Web">this repository</a>.

NOTE: When opening the project, use the **PhysicalTherapyApp.xcworkspace**. Opening it with the .xcodeproj project file will cause an error during compile.  

## Features
1. Exercises tab gives a brief description of each exercise.  
2. Schedule tab reminds the user to do exercises and tracks how many times remain.  
3. Checkup tab keeps track of patients' progress with pain and ability.  
4. <a href="http://kneefixerpro.mikethebro.com">Website</a> for assigning exercises (currently down due to redesign).  

## Issues
1. Exercise tab won't load on start (user must press reload or switch to another tab).  

## In Progress
1. Website to assign exercises is being redone in Django.

## Future Improvements
1. Exercise completion will persist even if app is closed.
2. Video explanation of exercise.
3. Checkup tab will send data back to website.

## Eventual Goals
1. Multiple accounts so each user can have different exercises assigned.
2. Graph of progress shown on website.  
