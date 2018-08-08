//
//  CoursePageViewController.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/8/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

import UIKit
import MapKit

class CoursePageViewController: UIViewController, MKMapViewDelegate
{
    //
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var courseCoverView: UIView!
    @IBOutlet weak var courseBGImageView: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    
    //
    @IBOutlet weak var lbl_trainingTitle: UILabel!
    @IBOutlet weak var lbl_trainingDescription: UILabel!
    @IBOutlet weak var lbl_trainingContent: UILabel!
    @IBOutlet weak var lbl_trainingPre: UILabel!
    
    //
    @IBOutlet weak var containerViewHeight: NSLayoutConstraint!
    @IBOutlet weak var courseBGHeight: NSLayoutConstraint!
    @IBOutlet weak var courseCoverViewHeight: NSLayoutConstraint!
    
    //
    override func viewDidLoad()
    {
        //
        super.viewDidLoad();
        
        //
        mapView.delegate = self;
        addLocationOnMap();
    }
    
    //
    override func viewWillAppear(_ animated: Bool)
    {
        //
        super.viewWillAppear(animated);
        
        //
        //lbl_trainingTitle.text = " كانت عضوية الموقع مقتصرة في بداية الأمر على طلبة جامعة هارفارد، ولكنها امتدت بعد ذلك لتشمل الكليات الأخرى في مدينة بوسطن وجامعة آيفي ليج وجامعة ستانفورد.";
        
        //lbl_trainingContent.text = "وقد قام مارك زوكربيرغ بتأسيس فيسبوك بالاشتراك مع كل من داستين موسكوفيتز وكريس هيوز الذين تخصصا في دراسة علوم الحاسب وكانا رفيقي زوكربيرغ في سكن الجامعة عندما كان طالبًا في جامعة هارفارد. كانت عضوية الموقع مقتصرة في بداية الأمر على طلبة جامعة هارفارد، ولكنها امتدت بعد ذلك لتشمل الكليات الأخرى في مدينة بوسطن وجامعة آيفي ليج وجامعة ستانفورد. ثم اتسعت دائرة الموقع لتشمل أي طالب جامعي، ثم طلبة المدارس الثانوية، وأخيرًا أي شخص يبلغ من العمر 13 عامًا فأكثر. يضم الموقع حاليًا أكثر من مليار مستخدم على مستوى العالم.";
    }
    
    //
    override func viewDidAppear(_ animated: Bool)
    {
        //
        updateConstraintsForContainerView();
        updateConstraintsForCourseImageView();
    }
    
    //
    func updateConstraintsForCourseImageView()
    {
        // here we calculate the new size of title
        // so that we need to update the image view height to include all items they were included in it.
        
        // for lbl_trainingTitle :
        let trainingTitle_oldHeight:CGFloat = 35.0;
        let trainingTitle_newHeight = lbl_trainingTitle.frame.height;
        let trainingTitle_difference = (trainingTitle_newHeight - trainingTitle_oldHeight);
        
        //
        // 200 : current height of courseImageView and cover
        //
        let courseImageViewNewHeight = 200 + trainingTitle_difference;
        
        // You should handle UI updates on the main queue, whenever possible
        OperationQueue.main.addOperation ({
            
            //
            self.courseCoverViewHeight.constant = courseImageViewNewHeight;
            self.courseBGHeight.constant = courseImageViewNewHeight;
            
            //
            self.courseBGImageView.layoutIfNeeded();
            self.courseCoverView.layoutIfNeeded();
        })
    }
    
    //
    func updateConstraintsForContainerView()
    {
        // here we calculate the new size of labels
        // so that we need to update the container view height
        
        // for lbl_trainingTitle :
        let trainingTitle_oldHeight:CGFloat = 35.0;
        let trainingTitle_newHeight = lbl_trainingTitle.frame.height;
        let trainingTitle_difference = (trainingTitle_newHeight - trainingTitle_oldHeight);
        
        // for lbl_trainingContent :
        let trainingDescription_oldHeight:CGFloat = 48.5;
        let trainingDescription_newHeight = lbl_trainingDescription.frame.height;
        let trainingDescription_difference = (trainingDescription_newHeight - trainingDescription_oldHeight);
        
        // for lbl_trainingContent :
        let trainingContent_oldHeight:CGFloat = 36.5;
        let trainingContent_newHeight = lbl_trainingContent.frame.height;
        let trainingContent_difference = (trainingContent_newHeight - trainingContent_oldHeight);
        
        // for lbl_trainingContent :
        let trainingPre_oldHeight:CGFloat = 24.5;
        let trainingPre_newHeight = lbl_trainingPre.frame.height;
        let trainingPre_difference = (trainingPre_newHeight - trainingPre_oldHeight);
        
        //
        // 1250 : current height of containerView
        //
        let viewNewHeight = 1250 + trainingDescription_difference + trainingContent_difference + trainingPre_difference + trainingTitle_difference;
        
        // You should handle UI updates on the main queue, whenever possible
        OperationQueue.main.addOperation ({
            self.containerViewHeight.constant = viewNewHeight;
            self.containerView.layoutIfNeeded();
        })
    }
    
    //
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    func addLocationOnMap()
    {
        // Convert address to coordinate and annotate it on map
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString("address", completionHandler: {
            placemarks, error in
            if error != nil
            {
                print(error!)
                return
            }
            
            //
            if let placemarks = placemarks
            {
                // Get the first placemark
                let placemark = placemarks[0]
                
                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = "Raqameeha"
                annotation.subtitle = "Digital Agency"
                
                //
                if let location = placemark.location
                {
                    //
                    annotation.coordinate = location.coordinate
                    
                    // Display the annotation
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
        })
    }

    //
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        //
        let identifier = "MyPin"
        if annotation.isKind(of: MKUserLocation.self)
        {
            return nil
        }
        
        // Reuse the annotation if possible
        var annotationView:MKPinAnnotationView? = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        
        //
        if annotationView == nil
        {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        }
        
        //
        let leftIconView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 53, height: 53))
        leftIconView.image = UIImage(named: "logo")
        annotationView?.leftCalloutAccessoryView = leftIconView
        annotationView?.pinTintColor = UIColor.orange
        
        //
        return annotationView
    }
    
} // end of class






