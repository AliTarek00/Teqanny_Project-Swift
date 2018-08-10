//
//  FancyTextView.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/10/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

@IBDesignable class FancyTextView: UITextView
{
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
            didSet {
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0.0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor = .black {
            didSet {
                layer.borderColor = borderColor.cgColor
            }
        }
        
} // end of class

