//
//  LabelExtension.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/12/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import Foundation
import UIKit

extension UILabel
{
    func addCharactersSpacing(_ value: CGFloat = 1.15)
    {
        if let textString = text
        {
            let attrs: [NSAttributedStringKey : Any] = [.kern: value]
            attributedText = NSAttributedString(string: textString, attributes: attrs)
        }
    }
    
} // end of extension
