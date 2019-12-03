//
//  signInSingOutCustomTextField.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

@IBDesignable
class signInSingOutCustomTextField: UITextField {

    
    override init(frame: CGRect) {
           super.init(frame: frame)
           // programmatic Button property call for now we wont need to call any thing in here
       }
       
       required init?(coder aDecorder: NSCoder) {
           super.init(coder: aDecorder)
           // Story board Button property call
           textFieldLayOutProperty()
           textFieldProperties()
       }
    
    
     private func textFieldLayOutProperty() {
            
            // Layout On standby
            
    //       layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    //       layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
    //       layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
    //       layer.shadowOpacity = 1.0
    //       layer.shadowRadius = 6
    //       layer.masksToBounds = true
    //       clipsToBounds = false
            
            layer.cornerRadius = 20
            layer.frame = CGRect(x: 35, y: 400, width: 350, height: 50)
            layer.borderWidth = 0.3
            layer.borderColor = #colorLiteral(red: 0.9005773118, green: 0.8936567962, blue: 0.9392406088, alpha: 1)
        }
    
        
    private func textFieldProperties() {
            
        backgroundColor = #colorLiteral(red: 0.1279791296, green: 0.1371493936, blue: 0.163038969, alpha: 1)
        let placeHolder = NSAttributedString(string: "User Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
       attributedPlaceholder = placeHolder
       
        
            
    }
    
    
    
   

}
