//
//  SignUp.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class SignUp: UIViewController {
    
    
    
    // IBOutlets
      @IBOutlet weak var signInOulet: signInSingOutCustomTextField!
      
      
      
      
      // IBAction
      @IBAction func signInPressed(_ sender: customeSignInSignOutButton) {
          print("Sign In")
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
