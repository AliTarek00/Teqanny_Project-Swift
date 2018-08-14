//
//  AllCategoriesViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/11/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit

class AllCategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    //
    var theCategories = [Category]()
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //
        return theCategories.count;
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //
        let cellIdentifier = "categoryCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CategoryTableViewCell
        
        // Configure the cell...
        cell.CategoryTitle_lbl.text = theCategories[indexPath.row].categoryTitle
        cell.CategoryDescription_lbl.text = theCategories[indexPath.row].categoryDescription
        
        //
        let categoryImageName = theCategories[indexPath.row].categoryImageName
        cell.CategoryImage_imageView.image = UIImage(named: categoryImageName)
        
        //
        return cell;
    }
    
    //
    override func viewDidLoad()
    {
        //
        super.viewDidLoad()

        // add categories
        appendCategories()
    }

    //
    override func didReceiveMemoryWarning()
    {
        //
        super.didReceiveMemoryWarning()
    }

    //
    func appendCategories()
    {
        //
        var cat_1_title = "التصميمات والرسومات الرقمية";
        cat_1_title += " Digital Graphics Design"
        
        //
        var cat_2_title = "التسويق الرقمي";
        cat_2_title += " Digital Marketing"
        
        //
        var cat_3_title = "تطوير البرمجيات";
        cat_3_title += " Software Development"
        
        //
        var cat_4_title = "إدارة الأعمال الرقمية";
        cat_4_title += " Business Automation"
        
        //
        let category_1 = Category(title: cat_1_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_design")
        
        //
        let category_2 = Category(title: cat_2_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_marketing")
        
        //
        let category_3 = Category(title: cat_3_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_software")
        
        //
        let category_4 = Category(title: cat_4_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_bussines")
        
        //
        let category_5 = Category(title: cat_4_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_engineering")
        
        //
        let category_6 = Category(title: cat_4_title, description: "مجال التصميمات من أكثر المجالات التقنية انتشارا حيث أنه تخصص مطلوب في كل المجالات التقنية ولعل أهمها التسويق الرقمي والويب", imageName: "home_page_networks")
        
        // append
        theCategories.append(category_1);
        theCategories.append(category_2);
        theCategories.append(category_3);
        theCategories.append(category_4);
        theCategories.append(category_5);
        theCategories.append(category_6);
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







