//
//  Extension.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/8/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import Foundation
import UIKit

extension UIColor
{
    convenience init(red: Int, green: Int, blue: Int)
    {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
    
        //
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(colorCode: Int) {
        self.init(
            red: (colorCode >> 16) & 0xFF,
            green: (colorCode >> 8) & 0xFF,
            blue: colorCode & 0xFF
        )
    }
    
} // end of extension
