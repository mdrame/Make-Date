//
//  ViewController.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var userNameLogIn: LoginPageTextFields!
    @IBOutlet weak var passWordLogIn: LoginPageTextFields!
    
    
    
    func userNameLogInFunctionCalls(view: UIView) {
        // edit userName textield here
        userNameLogIn.textFieldplaceHolder(placeHolderText: "User Name", color: #colorLiteral(red: 0.8821972863, green: 0.9148316062, blue: 0, alpha: 0.5))
        
    }
    
    func passWordLogInFunctionCalls(view: UIView) {
           // edit passWord textfield here
        passWordLogIn.textFieldplaceHolder(placeHolderText: "PassWord", color: #colorLiteral(red: 0.8821972863, green: 0.9148316062, blue: 0, alpha: 0.5) )
           
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // calling and setting textfield as a paremeter so layers  in the function can access it
        userNameLogInFunctionCalls(view: userNameLogIn)
        passWordLogInFunctionCalls(view: passWordLogIn)
        
     
        
        
      
        // Do any additional setup after loading the view.
    }
    

   

}
