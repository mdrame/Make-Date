//
//  logInOutAnimation.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/17/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit



extension UIButton {
    
  // -------------------------------------------------//
 // - - - - - - - - - Pauls Animation - - - - - - - -//
// -------------------------------------------------//
    
    func heartBeatAnimation() {
        
        let beat = CASpringAnimation(keyPath: "transform.scale")
        beat.duration = 0.9
        beat.fromValue = 0.95
        beat.toValue = 1.0
        beat.autoreverses = true
        beat.repeatCount = .infinity
        beat.initialVelocity = 0.8
        beat.damping = 1.0
        
        layer.add(beat, forKey: nil)
    
    }
    
    
}
