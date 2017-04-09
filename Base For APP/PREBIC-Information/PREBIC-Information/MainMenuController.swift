//
//  ViewController.swift
//  PREBIC-Information
//
//  Created by michael miller on 1/17/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class MainMenuController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK ACTIONS 

    @IBAction func WorkingGroupLink(_ sender: Any)
    {
        if let workingGroupUrl = URL (string: "https://unfazedcreation.wixsite.com/prebicdata/copy-of-board-members")
        {
            UIApplication.shared.open(workingGroupUrl, options: [:])
        }
    }

}

