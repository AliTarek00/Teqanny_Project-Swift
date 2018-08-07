//
//  ViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/6/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //
    override func viewDidLoad()
    {
        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:
            .plain, target: nil, action: nil);
        //
        super.viewDidLoad()
    }
    
    //
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    

} // end of class

