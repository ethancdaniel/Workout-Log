//
//  ViewController.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import UIKit

class WorkoutPlanViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var workoutPlanTableView: UITableView!
    @IBOutlet weak var workoutNameLabel: UILabel!
    
    var selectedWorkout: WorkoutPlan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutNameLabel.text = selectedWorkout?.name
        workoutPlanTableView.delegate = self
        workoutPlanTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBAction func changePlanPressed(_ sender: UIButton) {
    }
    
    @IBAction func addDayPressed(_ sender: UIButton) {
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let workout = selectedWorkout {
            return workout.workoutDays.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let workout = selectedWorkout {
        let cell = Bundle.main.loadNibNamed("WorkoutDayTableViewCell", owner: self, options: nil)?.first as! WorkoutDayTableViewCell
            cell.nameLabel.text = workout.workoutDays[indexPath.row].workoutName
            cell.dayLabel.text = workout.workoutDays[indexPath.row].dayName
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}

