//
//  Course.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/9/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import Foundation

class Course
{
    //
    var courseID: Int
    var courseTitle:String
    var courseCategory:String
    var courseHours:Int
    var courseLevel:String
    var courseRegisterCounters: Int
    var coursePrice:Double
    var courseRate:Int
    var courseOverview:String
    var courseContent:String
    var coursePreRequest:String
    var courseInstructorId:Int
    var courseLocationId:Int
    var courseImageUrl:String
    var courseStartData:String
    var courseCreatedAt:String
    var courseUpdatedAt:String
    var courseLike:Bool
    
    //
    init(jsonObject: [String: Any])
    {
        //
        self.courseID = jsonObject["id"] as! Int;
        self.courseTitle = jsonObject["title"] as! String;
        self.courseCategory = jsonObject["category"] as! String;
        self.courseHours = jsonObject["hours"] as! Int;
        self.courseLevel = jsonObject["level"] as! String;
        self.courseRegisterCounters = jsonObject["registerCounters"] as! Int;
        self.coursePrice = jsonObject["price"] as! Double;
        self.courseRate = jsonObject["rate"] as! Int;
        self.courseOverview = jsonObject["overview"] as! String;
        self.courseContent = jsonObject["content"] as! String;
        self.coursePreRequest = jsonObject["preRequest"] as! String;
        self.courseInstructorId = jsonObject["instructorId"] as! Int;
        self.courseLocationId = jsonObject["locationId"] as! Int;
        self.courseImageUrl = jsonObject["imageUrl"] as! String;
        self.courseStartData = jsonObject["startData"] as! String;
        self.courseCreatedAt = jsonObject["createAt"] as! String;
        self.courseUpdatedAt = jsonObject["updatedAt"] as! String;
        self.courseLike = jsonObject["like"] as! Bool;
    }
    
    //
    init(id:Int, title:String, category:String, hours:Int, level:String, registerCounters:Int, price:Double, rate:Int, overview:String, content:String, preRequest:String, instructorId:Int, locationId:Int, imageUrl:String, startData:String, createAt:String, updatedAt:String, like:Bool)
    {
        self.courseID = id;
        self.courseTitle = title;
        self.courseCategory = category;
        self.courseHours = hours;
        self.courseLevel = level;
        self.courseRegisterCounters = registerCounters;
        self.coursePrice = price;
        self.courseRate = rate;
        self.courseOverview = overview;
        self.courseContent = content;
        self.coursePreRequest = preRequest;
        self.courseInstructorId = instructorId;
        self.courseLocationId = locationId;
        self.courseImageUrl = imageUrl;
        self.courseStartData = startData;
        self.courseCreatedAt = createAt;
        self.courseUpdatedAt = updatedAt;
        self.courseLike = like;
    }
    
} // end of class










