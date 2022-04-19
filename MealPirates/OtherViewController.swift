//
//  OtherViewController.swift
//  MealPirates
//
//  Created by Mah Tej Rella on 4/19/22.
//

import UIKit

class OtherViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arr1 = ["Cauliflower Wings", "Hand-Breaded Tenders", "Dirty Dubs Tots"]
    var arr2 = ["Nica Bowl", "Almond Joy", "Olas Bowl"]
    var arr3 = ["Ponko Chicken Plate", "Vegan Patty Plate", "Tofu Tenders Plate"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var count = 0
        
        if (pickerView.tag == 1) {
            count = arr1.count
        } else if (pickerView.tag == 2) {
            count = arr2.count
        } else if (pickerView.tag == 3) {
            count = arr3.count
        }
        
        return count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var data = ""
        
        if (pickerView.tag == 1) {
            data = arr1[row]
        } else if (pickerView.tag == 2) {
            data = arr2[row]
        } else if (pickerView.tag == 3) {
            data = arr3[row]
        }
        
        return data
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
