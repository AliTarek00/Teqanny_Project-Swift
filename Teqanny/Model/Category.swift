//
//  Category.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import Foundation

class Category
{
    //
    var categoryTitle:String
    var categoryDescription:String
    var categoryImageName:String
    
    //
    init(title:String, description:String, imageName:String)
    {
        self.categoryTitle = title
        self.categoryDescription = description
        self.categoryImageName = imageName
    }
    
} // end of class
