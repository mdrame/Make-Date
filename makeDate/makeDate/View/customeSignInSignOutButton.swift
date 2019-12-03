//
//  customeSignInSignOutButton.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/3/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class customeSignInSignOutButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // programmatic Button property call for now we wont need to call any thing in here
    }
    
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)
        // Story board Button property call
        
        buttonLayOutProperty()
        
        
    }
    
    
    private func buttonLayOutProperty() {
        
       layer.shadowColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
       layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
       layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
       layer.shadowOpacity = 1.0
       layer.shadowRadius = 2
       layer.masksToBounds = true
       clipsToBounds = false
        
    }
    
    private func buttonProperties() {
        
        
    }
    
    
    
    

}
