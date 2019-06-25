//
//  WorkoutPlan.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import Foundation

class WorkoutPlan {
    let name: String
    var workoutDays: [WorkoutDay]
    
    init(name: String) {
        self.name = name
        self.workoutDays = []
    }
    
    func addWorkoutDay(day: WorkoutDay) {
        workoutDays.append(day)
    }
}
