//
//  OneTrainingCell.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import UIKit

class OneTrainingCell: UITableViewCell {
    
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var timesLabel: UILabel!
    @IBOutlet weak var backgroundCell: UIView!
    @IBOutlet weak var trainingLabel: UILabel!
    
    
    func fill(_ training: Training) {
        
        // Dia da semana
        self.dayLabel.text = training.weekDay
        
        // Preenchendo os dados de um treino
        print("TIMEs \(training.listExercise[0].manyTimes)X")
        self.timesLabel.text = "\(training.listExercise[0].manyTimes)X"
        self.backgroundCell.backgroundColor = training.listExercise[0].type.color
        self.trainingLabel.text = training.listExercise[0].getDescription()
    }
    
    
}
