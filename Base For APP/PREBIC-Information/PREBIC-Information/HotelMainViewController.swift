//
//  HotelMainViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 2/6/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class HotelMainViewController: UIViewController {

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
    
    //MARK Actions
    // Return Actions 
    
    
    // Buton Actions
    @IBAction func GoToGalvezLink(_ sender: Any)
    {
        if let galvezUrl = URL (string: "http://www.hotelgalvez.com/"){
            UIApplication.shared.open(galvezUrl, options: [:])
        }
        
    }
    
    @IBAction func GoToFoodLink(_ sender: Any)
    {
        if let foodUrl = URL (string: "https://www.google.com/maps/search/best+places+to+eat+in+galveston/@29.2929404,-94.8242935,13z"){
            UIApplication.shared.open(foodUrl, options: [:])
        }
        
    }
    
    @IBAction func GoToShuttleinfoLink(_ sender: Any)
    {
        // TODO Get this info
        
    }

}
