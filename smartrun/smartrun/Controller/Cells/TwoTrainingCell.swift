//
//  TwoTrainingCell.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import UIKit

class TwoTrainingCell: UITableViewCell {

    @IBOutlet weak var weekDayLabel: UILabel!
    
    // MARK: Cell A
    @IBOutlet weak var timesLabelA: UILabel!
    @IBOutlet weak var backgroundA: UIView!
    @IBOutlet weak var trainingLabelA: UILabel!
    
    // MARK: Cell B
    
    @IBOutlet weak var timesLabelB: UILabel!
    @IBOutlet weak var backgroundB: UIView!
    @IBOutlet weak var trainingLabelB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fill(_ training: Training) {
        self.weekDayLabel.text = training.weekDay
        
        self.timesLabelA.text = training.listExercise[0].getTimes()
        self.backgroundA.backgroundColor = training.listExercise[0].getColor()
        self.trainingLabelA.text = training.listExercise[0].getDescription()
        
        self.timesLabelB.text = training.listExercise[1].getTimes()
        self.backgroundB.backgroundColor = training.listExercise[1].getColor()
        self.trainingLabelB.text = training.listExercise[1].getDescription()
        
    }

}
