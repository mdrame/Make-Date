//
//  LoginPageTextFields.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/4/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class LoginPageTextFields: UITextField {
    
    // Programmatic Initialization
    override init(frame: CGRect) {
    super.init(frame: frame)
    // Add custom code here
    // We don't need to call our fun here cause this for programmatic created UIView object
    }
    // Story Board Initialization
    required init?(coder aDecorder: NSCoder) {
    super.init(coder: aDecorder)
    // Add custom code here
        
        layoutStuff()
        addLeftView()
    
    }
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // function below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    private func layoutStuff() {
        
        // border
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3008637764)
        layer.cornerRadius = 5
        
        // shadow
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowOffset = CGSize(width: 0, height: 0)
       
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.9
        
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // function below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    private func addLeftView() {
        // creating tiny view that will be added to the side to the textField
        let textFieldLeftSideView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height ))
        textFieldLeftSideView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        // assing tiny view to leftside of textfield
        self.leftView = textFieldLeftSideView
        self.leftViewMode = .always // activating lefMode to always
    }
    
    
    
    /* = = = = = = = = = = = = = = = = = = = = = = */
    // function below
    /* = = = = = = = = = = = = = = = = = = = = = = */
    
    
    func textFieldplaceHolder(placeHolderText: String, color: UIColor) {
         
        let placeholderString = NSAttributedString(string: placeHolderText ,  attributes: [NSAttributedString.Key.foregroundColor: color ])
    self.attributedPlaceholder = placeholderString
        
    }
    
    
    
    

}
