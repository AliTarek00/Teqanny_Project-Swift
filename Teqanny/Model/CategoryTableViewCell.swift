//
//  CategoryTableViewCell.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell
{
    //
    @IBOutlet var CategoryTitle_lbl: UILabel!
    @IBOutlet var CategoryDescription_lbl: UILabel!
    @IBOutlet var CategoryImage_imageView: UIImageView!
    
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

} // end of class
