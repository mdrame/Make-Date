//
//  customeCell.swift
//  UnKnown Project
//
//  Created by Mohammed Drame on 11/25/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class customeCell: UITableViewCell {
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodName: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    
    func updateUI(data: Skalenton) {
        self.foodImage.image = UIImage(named: data.food)
        self.foodName.text = data.name
   
    }
    

}
