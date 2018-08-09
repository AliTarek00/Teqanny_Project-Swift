//
//  Utilities.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/10/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import Foundation
import UIKit


public class Common
{
    static func createAlertController(title : String, message: String, viewController: UIViewController)
    {
        //
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        // to change font of title and message.
        let titleFont = [NSAttributedStringKey.font: UIFont(name: "29LTBukra-Bold", size: 18.0)!, NSAttributedStringKey.foregroundColor : UIColor(colorCode: 0x0d6889)];
        
        //
        let messageFont = [NSAttributedStringKey.font: UIFont(name: "29LTBukra-Regular", size: 14.0)!, NSAttributedStringKey.foregroundColor : UIColor(colorCode: 0x0d6889)]
        
        let titleAttrString = NSMutableAttributedString(string: title, attributes: titleFont)
        let messageAttrString = NSMutableAttributedString(string: message, attributes: messageFont)
        
        alertController.setValue(titleAttrString, forKey: "attributedTitle")
        alertController.setValue(messageAttrString, forKey: "attributedMessage")
        
        //
        alertController.addAction(UIAlertAction(title: "موافق", style: .default, handler:
            nil))
        
        //
        viewController.present(alertController, animated: true, completion: nil)
        
        
        
        
        
    }
    
} // end of class
