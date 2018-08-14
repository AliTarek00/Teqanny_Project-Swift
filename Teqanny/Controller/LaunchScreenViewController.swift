//
//  LaunchScreenViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/13/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController
{
    //
    @IBOutlet weak var lbl_mainTitle: UILabel!
    @IBOutlet weak var lbl_subTitle: UILabel!
    
    //
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl_mainTitle.font = UIFont(name: "29LTBukra-Bold", size: 55);
        lbl_subTitle.font = UIFont(name: "29LTBukra-Bold", size: 13);
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
} // end of class
