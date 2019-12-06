//
//  LogIn.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/5/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class LogIn: UIButton {
    
    
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

}
    
    private func layoutStuff() {
           
           // border
           layer.borderWidth = 2
           layer.borderColor = #colorLiteral(red: 0.08545988935, green: 0.09140480133, blue: 0.09901730609, alpha: 1)
           layer.cornerRadius = 9
           
           // shadow
           layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
           layer.shadowOffset = CGSize(width: 0, height: 2)
          
           layer.shadowRadius = 10
           layer.shadowOpacity = 0.9
           
       }
    
    




}
