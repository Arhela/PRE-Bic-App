//
//  GalvestonMainViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 2/6/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class GalvestonMainViewController: UIViewController {

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
    //Buton ACtions TBD 

    @IBAction func GoToWeatherLink(_ sender: Any)
    {
        if let weatherUrl = URL (string: "https://weather.com/weather/today/l/Galveston+TX+USTX0499:1:US")
        {
            UIApplication.shared.open(weatherUrl, options: [:]) 
        }
    }
    
    @IBAction func GoToRestauratntLink(_ sender: Any)
    {
        if let restUrl = URL (string: "https://www.google.com/maps/search/best+places+to+eat+in+galveston/@29.2929404,-94.8242935,13z")
        {
            UIApplication.shared.open(restUrl, options: [:])
        }
    }
    
   // Will link to POI
    @IBAction func GoToYouAreHeremap(_ sender: Any)
    {
        if let PoiUrl = URL (string: "http://www.galveston.com/attractions/")
        {
            UIApplication.shared.open(PoiUrl, options: [:]) 
        }
        
    }
    
}
