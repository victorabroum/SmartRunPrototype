//
//  TimerScene.swift
//  smartrun
//
//  Created by Victor Vasconcelos on 21/11/18.
//  Copyright © 2018 ufam. All rights reserved.
//

import Foundation
import SpriteKit

enum stateMachine {
    case play
    case pause
    case stop
}

class TimerScene: SKScene {
    
    var timerLabel: SKLabelNode?
    var countDown: Float = 0
    
    override func sceneDidLoad() {
        if let labelNode = self.childNode(withName: "timerLabel") as? SKLabelNode {
            timerLabel = labelNode
        }
    }
    
    
    
}
