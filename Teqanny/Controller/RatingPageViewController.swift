//
//  RatingPageViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/10/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class RatingPageViewController: UIViewController
{
    //
    @IBOutlet var backgroundImageView: UIImageView!
    
    //
    @IBOutlet var starBtn_1: UIButton!
    @IBOutlet var starBtn_2: UIButton!
    @IBOutlet var starBtn_3: UIButton!
    @IBOutlet var starBtn_4: UIButton!
    @IBOutlet var starBtn_5: UIButton!
    
    //
    override func viewDidLoad()
    {
        //
        super.viewDidLoad()

        //
        Common.applyBlurEffect(theImage: backgroundImageView, theView: self.view, theStyle: UIBlurEffectStyle.dark);
    }

    //
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    @IBAction func cancelBtnClicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil);
    }

    //
    @IBAction func snedBtnClicked(_ sender: Any)
    {
        //
    }
    
    //
    @IBAction func starBtnClicked(_ sender: Any)
    {
        // each star has a tag : 1, 2, 3, 4, 5
        
        // first of all, clear all stars
        emptyStarBar();
        
        // fill star bar based on user choice
        // if user choice starBtn_3, we will fill bar from 1 to 3
        
        //
        let tag = (sender as AnyObject).tag;
        
        //
        for i in 1..<tag!
        {
            // get "startBtn_i" button
            // switch its image
            
            //
            print("index = \(i)")
        }
        
    } // end of starBtnClicked function
    
    //
    func emptyStarBar()
    {
        // switch image
        starBtn_1.setImage(UIImage(named: "course-page-unreviewed_1"), for: .normal)
        starBtn_2.setImage(UIImage(named: "course-page-unreviewed_1"), for: .normal)
        starBtn_3.setImage(UIImage(named: "course-page-unreviewed_1"), for: .normal)
        starBtn_4.setImage(UIImage(named: "course-page-unreviewed_1"), for: .normal)
        starBtn_5.setImage(UIImage(named: "course-page-unreviewed_1"), for: .normal)
    }
    
} // end of class










