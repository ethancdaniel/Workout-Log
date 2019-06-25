//
//  WorkoutDay.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import Foundation

class WorkoutDay {
    let workoutName: String
    let dayName: String
    let exercises: [UserExercise]
    
    init(name: String, day: String) {
        self.workoutName = name
        self.dayName = day
        self.exercises = []
    }
}
