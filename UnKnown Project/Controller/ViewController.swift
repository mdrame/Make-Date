//
//  ViewController.swift
//  UnKnown Project
//
//  Created by Mohammed Drame on 11/25/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SetData.instance.getData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)  as? customeCell {
            
            let data = SetData.instance.getData()[indexPath.row]
            cell.updateUI(data: data)
            return cell
        } else {
            return customeCell()
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
 
  
    
    // Do this with prepare for segue
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//      if segue.identifier == "toSecond" {
//            if let destinationVC = segue.destination as? DetailVC {
//                destinationVC.name = string
//            }
//        }
//
//
//}
    
    
    
    
    
    
    

}
