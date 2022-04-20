//
//  CheckBox.swift
//  MealPirates
//
//  Created by Mah Tej Rella on 4/20/22.
//

import UIKit

class CheckBox: UIButton {
    
    //images
    let check = (UIImage(named: "check") ?? <#default value#>)! as UIImage
    let uncheck = (UIImage(named: "uncheck") ?? <#default value#>)! as UIImage
    
    //bool property
    
    var isChecked:Bool == fals) {
        didSet{
            if isChecked == true {
                self.setImage(check, for: .Normal)
            } else {
                self.setImage(uncheck, for: .Normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked", forControlEvent: UIControlEvents.touchUpInside)
    }
    
    func buttonClicked(sender:UIButton) {
        if (
    }

}
