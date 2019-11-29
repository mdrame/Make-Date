//
//  SetData.swift
//  UnKnown Project
//
//  Created by Mohammed Drame on 11/25/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import Foundation

class SetData {
    
    static let instance =  SetData()
    
    private let  dataArray = [Skalenton(name: "Drinks", food: "food.jpeg"),
                            Skalenton(name: "Soda", food: "soda.jpeg"),]
    
    func getData() -> [Skalenton]{
        
        return dataArray
    }
    
    
    
    
}
