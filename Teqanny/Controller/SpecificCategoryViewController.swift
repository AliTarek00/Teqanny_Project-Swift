//
//  SpecificCategoryViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class SpecificCategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //
    //var course_1 = Course(title: "أساسيات التصميم باستخدام برنامج أدوبي إليستريتور", category: "#تصميم", description: "دورة مخصصة في تعلم أساسيات التصميم باستخدام برنامج أدوبي إليستريتور نتعرف فيها علي تصميم الهوية البصرية والشعارات", price: 400, hours: 16, level: "مبتدئ", like: true, imageName: "illu")
    
    //
    var theCourses = [Course]()
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //
        return theCourses.count;
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //
        let cellIdentifier = "courseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseTableViewCell
        /*
        // Configure the cell...
        cell.CourseTitle_lbl.text = theCourses[indexPath.row].courseTitle
        cell.CourseCategory_lbl.text = theCourses[indexPath.row].courseCategory
        cell.CourseDescription_lbl.text = theCourses[indexPath.row].courseDescription
        cell.CoursePrice_lbl.text = "\(theCourses[indexPath.row].coursePrice) ج.م";
        cell.CourseHours_lbl.text = "\(theCourses[indexPath.row].courseHours) ساعة";
        cell.CourseLevel_lbl.text = theCourses[indexPath.row].courseLevel
        
        //
        if theCourses[indexPath.row].courseLike
        {
            cell.CourseLike_btn.setImage(UIImage(named: "course-page-liked"), for: .normal)
        }
        else
        {
            cell.CourseLike_btn.setImage(UIImage(named: "course-page-unliked_1"), for: .normal)
        }
        
        //
        let courseImageName = theCourses[indexPath.row].courseImageName
        cell.CourseImage_imageView.image = UIImage(named: courseImageName)
        */
        //
        return cell;
    }
    
    //
    override func viewDidLoad()
    {
        //
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //theCourses.append(course_1);
    }

    override func didReceiveMemoryWarning()
    {
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

} // end of class
