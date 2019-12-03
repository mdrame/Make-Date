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
        buttonProperties()
        
        
    }
    
    
    private func buttonLayOutProperty() {
        
        // Layout On standby
        
//       layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//       layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
//       layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
//       layer.shadowOpacity = 1.0
//       layer.shadowRadius = 6
//       layer.masksToBounds = true
//       clipsToBounds = false
        
        layer.cornerRadius = 20
        
    }
    
    private func buttonProperties() {
        backgroundColor = #colorLiteral(red: 0.9958390594, green: 0.8302667737, blue: 0.1770691574, alpha: 1)
        setTitle("SignIn", for: .normal)
        setTitleColor(#colorLiteral(red: 0.1279791296, green: 0.1371493936, blue: 0.163038969, alpha: 1), for: .normal)
        
        
    }
    
    
    
    

}
