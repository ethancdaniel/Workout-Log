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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changePlanPressed(_ sender: UIButton) {
    }
    
    @IBAction func addDayPressed(_ sender: UIButton) {
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

