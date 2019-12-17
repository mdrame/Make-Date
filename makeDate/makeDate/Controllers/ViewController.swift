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
    
    
    override func viewWillAppear(_ animated: Bool) {
       
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
        case true: // if button is on do this unhide the log in and log out button
            thumbPress.unSetLoginRegisterUnderThumbButton(firstView: loginButtonOutlet, secondView: registerButtonOutlet, centerValue: thumButtonOutlet)
                // unhided when button are visible
          
            print("Button Pressed")
        default: // vice versas
            thumbPress.setLoginRegisterUnderThumbButton(firstView: loginButtonOutlet, secondView:registerButtonOutlet, centerValue: thumButtonOutlet)
            // hide when buttons are not visible

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
