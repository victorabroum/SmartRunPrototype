//
//  ListTrainingViewController.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import UIKit

class ListTrainingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allTraining.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let training = allTraining[indexPath.row]
        
        var cell: UITableViewCell
        
        switch training.listExercise.count {
        case 1:
            // Só tem um treino, pega a cell oneTrainingCell
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "oneTrainingCell", for: indexPath) as! OneTrainingCell
            auxcell.fill(training)
            cell = auxcell
        case 2:
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "twoTrainingCell", for: indexPath) as! TwoTrainingCell
            auxcell.fill(training)
            cell = auxcell
        case 3:
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "threeTrainingCell", for: indexPath) as! ThreeTrainingCell
            auxcell.fill(training)
            cell = auxcell
        case 4:
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "fourTrainingCell", for: indexPath) as! FourTrainingCell
            auxcell.fill(training)
            cell = auxcell
        case 5:
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "fiveTrainingCell", for: indexPath) as! FiveTrainingCell
            auxcell.fill(training)
            cell = auxcell
        default:
            let auxcell = tableView.dequeueReusableCell(withIdentifier: "dayOffCell", for: indexPath) as! DayOffCell
            auxcell.fill(training)
            cell = auxcell
        }
        
        return cell
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
