//
//  DetailVC.swift
//  UnKnown Project
//
//  Created by Mohammed Drame on 11/25/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        nameOutlet.text = "\(name!)"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
