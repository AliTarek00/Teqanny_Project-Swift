//
//  DrawingView.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/8/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    public override func draw(_ rect: CGRect)
    {
        //
        let start_x:Double = 0.0;
        let start_y:Double = Double(self.frame.size.height);
        let end_x:Double = Double(self.frame.size.width);
        let end_y:Double = 0.0;
        
        //
        let strokeColor = UIColor.red.cgColor;
        
        //
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(10.0)
        context!.setStrokeColor(strokeColor)
        context?.move(to: CGPoint(x: start_x, y: start_y))
        context?.addLine(to: CGPoint(x: end_x, y: end_y))
        context!.strokePath()
    }
    
} // end of class
