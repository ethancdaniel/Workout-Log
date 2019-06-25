//
//  Exercise.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import Foundation

class UserExercise {
    let targetSets: Int
    let targetRepCount: Int
    let restTime: Int
    let exerciseReference: ExerciseReference
    
    init(sets: Int, reps: Int, rest: Int, ref: ExerciseReference) {
        self.targetSets = sets
        self.targetRepCount = reps
        self.restTime = rest
        self.exerciseReference = ref
    }
}
