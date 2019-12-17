//
//  ViewController.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  // ---------------------------------------------//
 // - - - - - - - - - Instances - - - - - - - - -//
// ---------------------------------------------//
    // thumb is off when view loads
    var buttonPress: Bool = false
    
    
    
    
    
  // ---------------------------------------------//
 // - - - - - - - - - Instances - - - - - - - - -//
// ---------------------------------------------//
    let thumbPress = ThumPresse()
    
    
    
    
    
    

  // ---------------------------------------------//
 // - - - - - - - - - ViewDidLoad - - - - - - - -//
// ---------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Save initial value before hiding outlets under thumb button
        thumbPress.setInitValues(login: loginButtonOutlet, register: registerButtonOutlet, thumb: thumButtonOutlet)
        
          
        
    }
    
    
    
  // ---------------------------------------------//
 // - - - - - - - - - IBOutlets - - - - - - - - -//
// ---------------------------------------------//
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var registerButtonOutlet: UIButton!
    @IBOutlet weak var thumButtonOutlet: UIButton!
    
    
    
    
    
    
    
    
  // ---------------------------------------------//
 // - - - - - - - - - IBActions - - - - - - - - -//
// ---------------------------------------------//
    @IBAction func thumpPress(_ sender: UIButton) {
     // 1. Toggle button stage bool ( on first click button is on )
        buttonPress.toggle()
        
        switch buttonPress {
        case true:
            thumbPress.unSetLoginRegisterUnderThumbButton(firstView: loginButtonOutlet, secondView: registerButtonOutlet, centerValue: thumButtonOutlet)
            print("Button Pressed")
        default:
            thumbPress.setLoginRegisterUnderThumbButton(firstView: loginButtonOutlet, secondView:registerButtonOutlet, centerValue: thumButtonOutlet)
            print("Button UnPressed")
        }
      
        
        
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        // 1. Ask user to get access to Keychain to get faceId
        
        // 2. Compare faceId with current face scan .
        
        // 3. If successful send user to profile page
        
        // 4. Else Vibrate phone and create custom error notification
        
    }
    
    
    @IBAction func register(_ sender: UIButton) {
        
        // 1. ask user to access keychain
        
        // 2. take faceid and send to database
    }
    
    
    
    
    
    
}
