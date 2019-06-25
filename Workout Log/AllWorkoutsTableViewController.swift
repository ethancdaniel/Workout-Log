//
//  AllWorkoutsTableViewController.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import UIKit

class AllWorkoutsTableViewController: UITableViewController {

    let workouts = [WorkoutPlan(name: "Chicken")]

    override func viewDidLoad() {
        super.viewDidLoad()
        workouts[0].addWorkoutDay(day: WorkoutDay(name: "Push", day: "Monday"))
        workouts[0].addWorkoutDay(day: WorkoutDay(name: "Pull", day: "Tuesday"))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workoutPlan", for: indexPath) as! WorkoutPlanTableViewCell
        cell.workoutNameLabel.text = workouts[0].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "selectWorkout", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? WorkoutPlanViewController {
            let workoutIndex = sender as! Int
            dest.selectedWorkout = workouts[workoutIndex]
        }
    }
}
