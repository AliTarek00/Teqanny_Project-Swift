//
//  RatingPageViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/10/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class RatingPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    @IBAction func cancelBtnClicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil);
    }

} // end of class
