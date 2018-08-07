//
//  SourceViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/7/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class SourceViewController: UIViewController
{
    //
    override func viewDidLoad()
    {
        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:
            .plain, target: nil, action: nil);
        
        //
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
