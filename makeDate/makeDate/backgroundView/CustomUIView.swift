//
//  CustomUIView.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/16/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class CustomUIView: UIView {



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
            
         

    }
    
    
   func baseUIViewlayoutStuff() {
              
              // border
              layer.borderWidth = 2
              layer.borderColor = #colorLiteral(red: 0.94375211, green: 0.9184934497, blue: 0.1899807155, alpha: 1)
              layer.cornerRadius = 9
              
              // shadow
//              layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//              layer.shadowOffset = CGSize(width: 0, height: 2)
//
//              layer.shadowRadius = 10
//              layer.shadowOpacity = 0.9
              
          }
    
    
    func secondBaseUIViewlayoutStuff() {
                  
                  // border
                  layer.borderWidth = 2
                  layer.borderColor = #colorLiteral(red: 0.4714163542, green: 0.4614343047, blue: 0.09063761681, alpha: 1)
                  layer.cornerRadius = 5
                  
                  // shadow
    //              layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    //              layer.shadowOffset = CGSize(width: 0, height: 2)
    //
    //              layer.shadowRadius = 10
    //              layer.shadowOpacity = 0.9
                  
              }
    
    
    
    

}
