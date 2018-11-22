//
//  dayOffCell.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import Foundation
import UIKit

class DayOffCell: UITableViewCell {
    
    @IBOutlet weak var weekDayLabel: UILabel!
    
    func fill(_ training: Training){
        self.weekDayLabel.text = training.weekDay
    }
    
}
