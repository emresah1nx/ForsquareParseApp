//
//  ViewController.swift
//  FoursquareParseApp
//
//  Created by Emre Şahin on 29.06.2024.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["calories"] = 100
        parseObject.saveInBackground { ( success , error) in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("success")
            }
        }
    }


}

