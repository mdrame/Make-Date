//
//  ThumPreess.swift
//  makeDate
//
//  Created by Mohammed Drame on 12/16/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation
import UIKit


class ThumPresse {
    
    
   // -----------------------------------------------------//
  // - - - - - - - - - - Properties - - - - - - - - - -   //
 // -----------------------------------------------------//

    
    
    
    
    
  // -----------------------------------------------------//
 //  Saving outlet initital values before changing them  //
// -----------------------------------------------------//
    var logInInitValue : CGPoint!
    var registerInitValue : CGPoint!
    var thumbInitValue : CGPoint!
    
    
   func setInitValues(login: UIButton, register: UIButton, thumb: UIButton) {
        // Set our global variable to the expect CGPosition of our Outlets
    logInInitValue = login.center
    registerInitValue = register.center
    thumbInitValue = thumb.center
    
    // Test: Print out values before we hide buttons
   
    
        // Hide buttons right after we get thier initial values
        setLoginRegisterUnderThumbButton(firstView: login, secondView: register, centerValue: thumb)

    
    }
    
    
    
    
  // --------------------------------------------------------------//
 //  add login and logout undeer buttons thumbbutton n hide them  //
// --------------------------------------------------------------//
        
     func setLoginRegisterUnderThumbButton(firstView loginOullet: UIButton, secondView registerOutlet: UIButton, centerValue thumButtonCenter: UIButton) {
        
        // 1. add the login and out buuton right under the thums when this funtion is called
        UIView.animate(withDuration: 0.5) {
        loginOullet.center = thumButtonCenter.center
        registerOutlet.center = thumButtonCenter.center
        
        // 2. Hide outlet when under thumb
            self.hidLogInOutOutletWhenTheyAreHidding(firstView: loginOullet, secondView: registerOutlet, centerValue: thumButtonCenter)
        
        // 3. change button backgground to a darker image
            
        } // animation end here
    }
    
    
    func hidLogInOutOutletWhenTheyAreHidding(firstView loginOullet: UIButton, secondView registerOutlet: UIButton, centerValue thumButtonCenter: UIButton) {
        // Hide login and out outlet when they are under the thumb
        loginOullet.isHidden = false
        registerOutlet.isHidden = false
        thumButtonCenter.isHidden = false
    }
    
    
  // ----------------------------------------------------------------//
 //  Unadd log in logout buttons undeer thumbbutton n unhide them   //
// ----------------------------------------------------------------//
    
   
    
    func unSetLoginRegisterUnderThumbButton(firstView loginOutLet: UIButton, secondView registerOutlet: UIButton, centerValue thumButtonCenter: UIButton) {
        
     UIView.animate(withDuration: 0.2) {
        //1. assing buttons their initials values
        loginOutLet.center = self.logInInitValue!
        registerOutlet.center = self.registerInitValue!
        
        // 2. unhide buttons
        self.unHidLogInOutOutletWhenTheyAreHidding(firstView: loginOutLet, secondView: registerOutlet, centerValue: thumButtonCenter)
        
        // 3. change button backgground back to light thumb
    } // animation ends here
    }
    
    
    func unHidLogInOutOutletWhenTheyAreHidding(firstView loginOullet: UIButton, secondView registerOutlet: UIButton, centerValue thumButtonCenter: UIButton) {
        // Hide login and out outlet when they are under the thumb
        loginOullet.isHidden = false
        registerOutlet.isHidden = false
        thumButtonCenter.isHidden = false
    }
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
