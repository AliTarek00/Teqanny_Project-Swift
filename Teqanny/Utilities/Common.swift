//
//  Utilities.swift
//  Teqanny
//
//  Created by Essam Mohamed Fahmi on 8/10/18.
//  Copyright © 2018 Essam Mohamed Fahmi. All rights reserved.
//

//
import Foundation
import UIKit
import Alamofire

//
public class Common
{
    //
    static func createAlertController(title : String, message: String, viewController: UIViewController)
    {
        //
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        // to change font of title and message.
        let titleFont = [NSAttributedStringKey.font: UIFont(name: "29LTBukra-Bold", size: 18.0)!, NSAttributedStringKey.foregroundColor : UIColor(colorCode: 0x0d6889)];
        
        //
        let messageFont = [NSAttributedStringKey.font: UIFont(name: "29LTBukra-Regular", size: 14.0)!, NSAttributedStringKey.foregroundColor : UIColor(colorCode: 0x0d6889)]
        
        let titleAttrString = NSMutableAttributedString(string: title, attributes: titleFont)
        let messageAttrString = NSMutableAttributedString(string: message, attributes: messageFont)
        
        alertController.setValue(titleAttrString, forKey: "attributedTitle")
        alertController.setValue(messageAttrString, forKey: "attributedMessage")
        
        //
        alertController.addAction(UIAlertAction(title: "موافق", style: .default, handler:
            nil))
        
        //
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    //
    static func applyBlurEffect(theImage: UIImageView, theView: UIView, theStyle: UIBlurEffectStyle)
    {
        // apply blur effect
        let blurEffect = UIBlurEffect(style: theStyle)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = theView.bounds
        theImage.addSubview(blurEffectView)
    }
    
    //
    static func getAFRequestFor(endPoint: String) -> Any?
    {
        //
        var jsonData:Any?
        
        //
        Alamofire.request(endPoint)
            
            .responseJSON { response in
                
                // check for errors
                guard response.result.error == nil else
                {
                    // got an error in getting the data, need to handle it
                    print("error calling GET")
                    print(response.result.error!)
                    return;
                }
                
                //
                jsonData = response.result.value
                print(jsonData ?? "No Data !")
        }
        
        //
        return jsonData
        
    } // end of getRequest - Alamofire - 3rd party framework
    
    //
    static func getRequestFor(endPoint: String) -> Any?
    {
        //
        var jsonData:Any?
        
        //
        let request = URLRequest(url: URL(string: endPoint)!);
        
        //
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: NSError?) -> Void in
            
            //
            if let data = data
            {
                do
                {
                    //
                    jsonData = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonData ?? "No Data !")
                }
                catch
                {
                    print("json error : \(error)");
                }
            }
            
            } as! (Data?, URLResponse?, Error?) -> Void)
        
        //
        task.resume();
        
        //
        return jsonData
        
    } // get request - native API - url session
    
    //
    static func makeGetCall()
    {
        // Set up the URL request
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        
        //
        guard let url = URL(string: todoEndpoint) else
        {
            print("Error: cannot create URL")
            return
        }
        
        //
        let urlRequest = URLRequest(url: url)
        
        // set up the session
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // make the request
        let task = session.dataTask(with: urlRequest)
        {
            (data, response, error) in
            
            // check for any errors
            guard error == nil else
            {
                print("error calling GET")
                print(error!)
                return
            }
            
            // make sure we got data
            guard let responseData = data else
            {
                print("Error: did not receive data")
                return
            }
            
            // parse the result as JSON, since that's what the API provides
            do
            {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
                    as? [String: Any] else
                {
                        print("error trying to convert data to JSON")
                        return
                }
                
                // now we have the todo
                // let's just print it to prove we can access it
                print("The todo is: " + todo.description)
                
                // the todo object is a dictionary
                // so we just access the title using the "title" key
                // so check for a title and print it if we have one
                guard let todoTitle = todo["title"] as? String else
                {
                    print("Could not get todo title from JSON")
                    return
                }
                
                //
                print("The title is: " + todoTitle)
                
            }
            catch
            {
                print("error trying to convert data to JSON")
                return
            }
        }
        
        //
        task.resume()
    }
    
} // end of class








