//
//  Training.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import Foundation
import UIKit

enum Rate {
    case MO
    case LE
    case FO
    case MF
    case TR
    case PR
    case RG
}

enum Feedback {
    case toEasy
    case nice
    case bitHard
    case toHard
}

enum ExerciseType {
    case Time
    case Distance
}


struct ExerciseRate {
    var description : String
    var abreviation : Rate
    var color : UIColor
}

class Exercise {
    var type : ExerciseRate
    var label : String
    var manyTimes : Int
    var duration: Int
    var exerciseType: ExerciseType
    
    init(type: ExerciseRate, howManyTimes times: Int, duration: Int, label : String, exerciseType: ExerciseType) {
        self.type = type
        self.manyTimes = times
        self.label = label
        self.duration = duration
        self.exerciseType = exerciseType
    }
    
    
    func getDuration() -> Int {
        return self.duration * 60
    }
    
    func getDescription() -> String {
        return "\(self.duration)\(self.label) \(self.type.abreviation)"
    }
    
    func getTimes() -> String{
        return "\(manyTimes)X"
    }
    
    func getColor() -> UIColor {
        return self.type.color
    }
    
    func makeEasier(in qtd: Int){
        var aux = qtd
        if self.exerciseType == .Distance {
            aux = qtd / 10
        }
        
        if aux <= self.duration {
            self.duration -= Int(aux)
        }
    }
    
    
    func makeHarder(in qtd: Int){
        var aux : Double = Double(qtd)
        if self.exerciseType == .Distance {
            aux = round(aux / 10)
            print("aux \(aux)")
        }
        
        self.duration += Int(aux)
    }
}

class Training {
    var weekDay: String
    var listExercise : [Exercise]
    
    init(weekDay day: String, exercises : [Exercise] = []) {
        self.weekDay = day
        self.listExercise = exercises
    }
    
    func feedback(feedback : Feedback) {
        // Fazer mudanças necessárias no treino certo
        
        switch feedback {
        case .toEasy:
            print("Treino vai ficar mais difícil")
            makeHarder(in: 20)
        case .nice:
            print("Treino vai continuar normal")
            makeHarder(in: 5)
        case .bitHard:
            print("Treino vai continuar difícil")
            makeEasier(in: 5)
        case .toHard:
            print("Treino vai ficar mais fácil")
            makeEasier(in: 20)
        }
    }
    
    func makeEasier(in qtd: Int){
        
        for training in allTraining{
            for exercise in training.listExercise{
                exercise.makeEasier(in: qtd)
            }
        }
        
    }
    
    func makeHarder(in qtd: Int){
        for training in allTraining{
            for exercise in training.listExercise{
                exercise.makeHarder(in: qtd)
            }
        }
    }
}


var allTraining: [Training] = [
    Training(weekDay: "SEG", exercises: [Exercise(type: ExerciseRate(description: "Moderado", abreviation: .MO, color: .moderada), howManyTimes: 1, duration: 65, label: "'", exerciseType: .Time)]),
    Training(weekDay: "TER"),
    Training(weekDay: "QUAR", exercises: [Exercise(type: ExerciseRate(description: "Moderado", abreviation: .MO, color: .moderada), howManyTimes: 4, duration: 10, label: "'", exerciseType: .Time),
                                          Exercise(type: ExerciseRate(description: "Corrida Forte", abreviation: .FO, color: .forte), howManyTimes: 4, duration: 5, label: "'", exerciseType: .Time)]),
    Training(weekDay: "QUIN", exercises: [Exercise(type: ExerciseRate(description: "Progressivo", abreviation: .PR, color: .progressivo), howManyTimes: 1, duration: 7, label: "Km", exerciseType: .Distance),
                                          Exercise(type: ExerciseRate(description: "Leve", abreviation: .LE, color: .leve), howManyTimes: 1, duration: 3, label: "Km", exerciseType: .Distance)]),
    Training(weekDay: "SEX"),
    Training(weekDay: "SAB", exercises: [Exercise(type: ExerciseRate(description: "Moderado", abreviation: .MO, color: .moderada), howManyTimes: 1, duration: 14, label: "Km", exerciseType: .Distance)]),
    Training(weekDay: "DOM"),



]
