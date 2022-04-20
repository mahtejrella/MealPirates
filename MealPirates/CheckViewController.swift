//
//  CheckViewController.swift
//  MealPirates
//
//  Created by Mah Tej Rella on 4/20/22.
//

import UIKit

class CheckViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func CheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    

}
