//
//  LinksViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 1/28/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class LinksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
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
    
    // MARK ACTIONS
    @IBAction func MoveToGalvez(_ sender: Any)
    {
        if let Galvezurl = URL(string: "http://www.hotelgalvez.com/") {
            UIApplication.shared.open(Galvezurl, options: [:])
        }
    }
    

}
