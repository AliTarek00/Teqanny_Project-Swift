//
//  TrainingTableViewCell.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell
{
    //
    @IBOutlet var CourseTitle_lbl: UILabel!
    @IBOutlet var CourseCategory_lbl: UILabel!
    @IBOutlet var CourseDescription_lbl: UILabel!
    @IBOutlet var CoursePrice_lbl: UILabel!
    @IBOutlet var CourseHours_lbl: UILabel!
    @IBOutlet var CourseLevel_lbl: UILabel!
    @IBOutlet var CourseLike_btn: UIButton!
    @IBOutlet var CourseImage_imageView: UIImageView!
    
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

} // end of class
