//
//  ViewController.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var countDown: Int = 0
    var timer = Timer()
    var isTimerRunning = false
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var backgroundTraining: UIView!
    @IBOutlet weak var trainingLabel: UILabel!
    
    let training: Training = allTraining[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let exercise = training.listExercise[0]
        countDown = exercise.getDuration()
        countDownLabel.text = timeString(time: TimeInterval(countDown))
        backgroundTraining.backgroundColor = exercise.getColor()
        trainingLabel.text = exercise.getDescription()
        
    }
    
    // MARK: Func utils
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        countDown -= 1     //This will decrement(count down)the seconds.
        countDownLabel.text = timeString(time: TimeInterval(countDown)) //This will update the label.
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    func displayFeedBack() {
        // 1
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        // 2
        let toEasy = UIAlertAction(title: "Fácil demais", style: .default) { (alert) in
            
            self.training.feedback(feedback: .toEasy)
        }
        let nice = UIAlertAction(title: "Tranquilo", style: .default) { (alert) in
            
            self.training.feedback(feedback: .nice)
        }
        let bitHard = UIAlertAction(title: "Cansei", style: .default) { (alert) in
            
            self.training.feedback(feedback: .bitHard)
        }
        let toHard = UIAlertAction(title: "Muito difícil", style: .default) { (alert) in
            
            self.training.feedback(feedback: .toHard)
        }
        
        // 4
        
        optionMenu.addAction(toEasy)
        optionMenu.addAction(nice)
        optionMenu.addAction(bitHard)
        optionMenu.addAction(toHard)
        
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }

    // MARK: Control timer
    
    // Stop
    
    @IBOutlet weak var stopButton: UIButton!
    @IBAction func stopClicked(_ sender: Any) {
        
        timer.invalidate()
        
        startButton.alpha = 1
        pauseButton.alpha = 0
        stopButton.alpha = 0
        
        displayFeedBack()
        
        // E ainda por cima tem que chamar o feedback
        
    }
    
    
    // Pause
    @IBOutlet weak var pauseButton: UIButton!
    @IBAction func pauseClicked(_ sender: Any) {
        
        timer.invalidate()
        
        startButton.alpha = 1
        pauseButton.alpha = 0
    }
    
    // Start
    @IBOutlet weak var startButton: UIButton!
    @IBAction func startClicked(_ sender: Any) {
        runTimer()
        startButton.alpha = 0
        pauseButton.alpha = 1
        stopButton.alpha = 1
    }
}

