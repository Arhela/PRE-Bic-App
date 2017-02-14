//
//  VenueMainViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 2/6/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class VenueMainViewController: UIViewController {

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
    
    // MARK Actions
    // Buton actions 
    
    @IBAction func GoToVenueDirections(_ sender: Any)
    {
        if let dirToVenueUrl = URL (string: "https://www.google.com/maps/dir/Hotel+Galvez+and+Spa,+2024+Seawall+Blvd,+Galveston,+TX+77550/Open+Gates+Conference+Center,+Galveston,+TX/@29.2956019,-94.793631,16z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x863f9e5c182e0291:0x36918c44e9394902!2m2!1d-94.786181!2d29.292609!1m5!1m1!1s0x863f9e691f25fc2b:0xd7e16e75db64f4aa!2m2!1d-94.7939603!2d29.3000079"){
            UIApplication.shared.open(dirToVenueUrl, options: [:])
        }
        
    }
    
    @IBAction func PresentVenuLayout(_ sender: Any)
    {
        // May go to another VC with an image
    }

    @IBAction func VenuInfo(_ sender: Any)
    {
        // UTMB website?
        
    }
}
