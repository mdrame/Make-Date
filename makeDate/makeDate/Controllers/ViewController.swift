//
//  ViewController.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

              
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
  // ---------------------------------------------//
 // - - - - - - - - - IBOutlets - - - - - - - - -//
// ---------------------------------------------//
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var registerButtonOutlet: UIButton!
    
    
    
    
    
    
  // ---------------------------------------------//
 // - - - - - - - - - IBActions - - - - - - - - -//
// ---------------------------------------------//
    
    @IBAction func thumpPress(_ sender: UIButton) {
        // 1. Pop login and logout button from under thumpress
        
        //2. change thumPress Image ( Darker )
        
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
