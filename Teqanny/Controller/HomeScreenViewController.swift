//
//  HomeScreenViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit
import Alamofire

class HomeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //
    let url_Liked_Recently_Courses = "http://192.168.1.22/tqnee/public/index.php/home";
    
    //
    //var course_1 = Course(title: "أساسيات التصميم باستخدام برنامج أدوبي إليستريتور", category: "#تصميم", description: "دورة مخصصة في تعلم أساسيات التصميم برنامج أدوبي إليستريتور نتعرف فيها علي تصميم الهوية البصرية والشعارات", price: 400, hours: 16, level: "مبتدئ", like: true, imageName: "illu")
    
    //
    //var course_2 = Course(title: "أساسيات التصميم باستخدام برنامج أدوبي فوتوشوب", category: "#تصميم", description: "دورة مخصصة في تعلم أساسيات التصميم برنامج أدوبي إليستريتور نتعرف فيها علي تصميم الهوية البصرية والشعارات", price: 400, hours: 16, level: "مبتدئ", like: true, imageName: "fb")
    
    //
    var theFeaturedCourses = [Course]()
    var theNewCourses = [Course]()
    
    //
    let title_1 = "• دوراتنا المميزة"
    let title_2 = "• الدورات المضافة حديثاً"
    
    //
    var sectionTitles = [String]()
    var sectionContent = [[Course]]()
    
    //
    func numberOfSections(in tableView: UITableView) -> Int
    {
        //
        return sectionTitles.count;
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //
        return sectionContent[section].count
    }
    
    //
    func tableView(_ tableView: UITableView, titleForHeaderInSection
        section: Int) -> String?
    {
        return sectionTitles[section]
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //
        let cellIdentifier = "courseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseTableViewCell
        /*
        // Configure the cell...
        cell.CourseTitle_lbl.text = sectionContent[indexPath.section][indexPath.row].courseTitle
        cell.CourseCategory_lbl.text = sectionContent[indexPath.section][indexPath.row].courseCategory
        cell.CourseDescription_lbl.text = sectionContent[indexPath.section][indexPath.row].courseDescription
        cell.CoursePrice_lbl.text = "\(sectionContent[indexPath.section][indexPath.row].coursePrice) ج.م";
        cell.CourseHours_lbl.text = "\(sectionContent[indexPath.section][indexPath.row].courseHours) ساعة";
        cell.CourseLevel_lbl.text = sectionContent[indexPath.section][indexPath.row].courseLevel
        
        //
        if sectionContent[indexPath.section][indexPath.row].courseLike
        {
            cell.CourseLike_btn.setImage(UIImage(named: "course-page-liked"), for: .normal)
        }
        else
        {
            cell.CourseLike_btn.setImage(UIImage(named: "course-page-unliked_1"), for: .normal)
        }
        
        //
        let courseImageName = sectionContent[indexPath.section][indexPath.row].courseImageName
        cell.CourseImage_imageView.image = UIImage(named: courseImageName)
        */
        //
        return cell;
    }
    
    //
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
    {
        let header = view as? UITableViewHeaderFooterView
        header?.textLabel?.font = UIFont(name: "29LTBukra-Bold", size: 13)
        header?.textLabel?.textColor = UIColor.white
        
        //
        header?.textLabel?.textAlignment = NSTextAlignment.right
        header?.backgroundView?.backgroundColor = UIColor(colorCode: 0x0D6889)
    }
    
    //
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 32;
    }
    
    //
    override func viewDidLoad()
    {
        // Remove the title of the back button
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:
            .plain, target: nil, action: nil);
        
        //
        super.viewDidLoad()
        
        //
        sectionTitles.append(title_1);
        sectionTitles.append(title_2);
        
        //
        //theFeaturedCourses.append(course_1);
        //theFeaturedCourses.append(course_2);
        
        //
        //theNewCourses.append(course_1);
        //theNewCourses.append(course_2);
        
        //
        sectionContent.append(theFeaturedCourses)
        sectionContent.append(theNewCourses)
        
        //
        //
        // get all data from backend
        //
        //
        
        //
        Common.makeGetCall();
        
        // #1
        // get topLiked and recently courses
        //
        if let data = Common.getRequestFor(endPoint: "https://jsonplaceholder.typicode.com/posts") as? [String:[[String:Any]]]
        {
            //
            theFeaturedCourses.removeAll();
            theNewCourses.removeAll();
            
            //
            getTopLikedAndRecentlyCourses(jsonData: data);
        }
        
    } // end of ViewDidLoad

    //
    func getTopLikedAndRecentlyCourses(jsonData: [String:[[String:Any]]])
    {
        // extract topLiked courses
        if let data = jsonData["likedCourse"]
        {
            for object in data
            {
                //
                let courseID = object["id"] as! Int;
                let courseTitle = object["title"] as! String;
                let courseCategory = object["category"] as! String;
                let courseHours = object["hours"] as! Int;
                let courseLevel = object["level"] as! String;
                let courseRegisterCounters = object["registerCounters"] as! Int;
                let coursePrice = object["price"] as! Double;
                let courseRate = object["rate"] as! Int;
                let courseOverview = object["overview"] as! String;
                let courseContent = object["content"] as! String;
                let coursePreRequest = object["preRequest"] as! String;
                let courseInstructorId = object["instructorId"] as! Int;
                let courseLocationId = object["locationId"] as! Int;
                let courseImageUrl = object["imageUrl"] as! String;
                let courseStartData = object["startData"] as! String;
                let courseCreatedAt = object["createAt"] as! String;
                let courseUpdatedAt = object["updatedAt"] as! String;
                let courseLike = object["like"] as! Bool;
                
                //
                let courseObject = Course(id: courseID, title: courseTitle, category: courseCategory, hours: courseHours, level: courseLevel, registerCounters: courseRegisterCounters, price: coursePrice, rate: courseRate, overview: courseOverview, content: courseContent, preRequest: coursePreRequest, instructorId: courseInstructorId, locationId: courseLocationId, imageUrl: courseImageUrl, startData: courseStartData, createAt: courseCreatedAt, updatedAt: courseUpdatedAt, like: courseLike);
                
                //
                theFeaturedCourses.append(courseObject)
            }
        }
        
        // extract topLiked courses
        if let data = jsonData["lastCourse"]
        {
            for object in data
            {
                //
                let courseID = object["id"] as! Int;
                let courseTitle = object["title"] as! String;
                let courseCategory = object["category"] as! String;
                let courseHours = object["hours"] as! Int;
                let courseLevel = object["level"] as! String;
                let courseRegisterCounters = object["registerCounters"] as! Int;
                let coursePrice = object["price"] as! Double;
                let courseRate = object["rate"] as! Int;
                let courseOverview = object["overview"] as! String;
                let courseContent = object["content"] as! String;
                let coursePreRequest = object["preRequest"] as! String;
                let courseInstructorId = object["instructorId"] as! Int;
                let courseLocationId = object["locationId"] as! Int;
                let courseImageUrl = object["imageUrl"] as! String;
                let courseStartData = object["startData"] as! String;
                let courseCreatedAt = object["createAt"] as! String;
                let courseUpdatedAt = object["updatedAt"] as! String;
                let courseLike = object["like"] as! Bool;
                
                //
                let courseObject = Course(id: courseID, title: courseTitle, category: courseCategory, hours: courseHours, level: courseLevel, registerCounters: courseRegisterCounters, price: coursePrice, rate: courseRate, overview: courseOverview, content: courseContent, preRequest: coursePreRequest, instructorId: courseInstructorId, locationId: courseLocationId, imageUrl: courseImageUrl, startData: courseStartData, createAt: courseCreatedAt, updatedAt: courseUpdatedAt, like: courseLike);
                
                //
                theNewCourses.append(courseObject)
            }
        }
        
    } // end of getCourses function
    
    //
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    @IBAction func goToSpecificCategory(_ sender: Any)
    {
        //
        performSegue(withIdentifier: "goToSpecificCategory", sender: self);
    }
    
} // end of class
