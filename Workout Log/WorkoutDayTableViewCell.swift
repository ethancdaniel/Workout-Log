//
//  WorkoutDayTableViewCell.swift
//  Workout Log
//
//  Created by Ethan Daniel on 6/24/19.
//  Copyright © 2019 Ethan Daniel. All rights reserved.
//

import UIKit

class WorkoutDayTableViewCell: UITableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
