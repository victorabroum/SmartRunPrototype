//
//  FiveTrainingCell.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import UIKit

class FiveTrainingCell: UITableViewCell {
    
    @IBOutlet weak var weekDayLabel: UILabel!
    
    // MARK: Cell A
    @IBOutlet weak var timesLabelA: UILabel!
    @IBOutlet weak var backgroundA: UIView!
    @IBOutlet weak var trainingLabelA: UILabel!
    
    // MARK: Cell B
    @IBOutlet weak var timesLabelB: UILabel!
    @IBOutlet weak var backgroundB: UIView!
    @IBOutlet weak var trainingLabelB: UILabel!
    
    // MARK: Cell C
    @IBOutlet weak var backgroundC: UIView!
    @IBOutlet weak var trainingLabelC: UILabel!
    
    // MARK: Cell D
    @IBOutlet weak var backgroundD: UIView!
    @IBOutlet weak var trainingLabelD: UILabel!
    
    // MARK: Cell E
    @IBOutlet weak var timesLabelE: UILabel!
    @IBOutlet weak var backgroundE: UIView!
    @IBOutlet weak var trainingLabelE: UILabel!

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
        
        // Cell A
        self.timesLabelA.text = training.listExercise[0].getTimes()
        self.backgroundA.backgroundColor = training.listExercise[0].getColor()
        self.trainingLabelA.text = training.listExercise[0].getDescription()
        
        // Cell B
        self.timesLabelB.text = training.listExercise[1].getTimes()
        self.backgroundB.backgroundColor = training.listExercise[1].getColor()
        self.trainingLabelB.text = training.listExercise[1].getDescription()
        
        // Cell C
        self.backgroundC.backgroundColor = training.listExercise[2].getColor()
        self.trainingLabelC.text = training.listExercise[2].getDescription()
        
        // Cell D
        self.backgroundC.backgroundColor = training.listExercise[3].getColor()
        self.trainingLabelC.text = training.listExercise[3].getDescription()
        
        // Cell E
        self.timesLabelE.text = training.listExercise[4].getTimes()
        self.backgroundE.backgroundColor = training.listExercise[4].getColor()
        self.trainingLabelE.text = training.listExercise[4].getDescription()
    }

}
