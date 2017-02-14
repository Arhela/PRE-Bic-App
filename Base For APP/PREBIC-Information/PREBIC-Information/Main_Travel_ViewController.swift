//
//  Main_Travel_ViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 1/24/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class Main_Travel_ViewController: UIViewController {

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
    
    // Actions 
    
   
    @IBAction func DismissOnTap(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    // Buton Actions (links)
    
    @IBAction func DirFromIAHToGalvez(_ sender: Any)
    {
        if let IAHBushDirUrl = URL(string: "https://www.google.com/maps/dir/George+Bush+Intercontinental+Airport+(IAH),+2800+N+Terminal+Rd,+Houston,+TX+77032/Hotel+Galvez+and+Spa,+2024+Seawall+Blvd,+Galveston,+TX+77550/@29.6380268,-95.3797663,10z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x8640b423d94355c7:0x9cc6b4fcc8c0c231!2m2!1d-95.3367827!2d29.9902199!1m5!1m1!1s0x863f9e5c182e0291:0x36918c44e9394902!2m2!1d-94.786181!2d29.292609") {
            UIApplication.shared.open(IAHBushDirUrl, options: [:])
        }

        
    }

    @IBAction func DirToHobbyToGalvez(_ sender: Any)
    {
        if let hobbyDirUrl = URL (string: "https://www.google.com/maps/dir/Hobby+Airport,+Houston,+TX/Hotel+Galvez+and+Spa,+2024+Seawall+Blvd,+Galveston,+TX+77550/@29.5265407,-95.3565704,10z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x8640964fef4f6623:0x96088339def49859!2m2!1d-95.2773289!2d29.6452718!1m5!1m1!1s0x863f9e5c182e0291:0x36918c44e9394902!2m2!1d-94.786181!2d29.292609"){
            UIApplication.shared.open(hobbyDirUrl, options: [:])
        }
        
    }
    
    @IBAction func SuperShuttleLink(_ sender: Any)
    {
        if let shuttleUrl = URL (string: "https://www.supershuttle.com/")
        {
            UIApplication.shared.open(shuttleUrl, options: [:])
        }
    }
    
    @IBAction func UberLink(_ sender: Any)
    {
        if let uberUrl = URL (string: "https://get.uber.com/"){
            UIApplication.shared.open(uberUrl, options: [:])
        }
    }
    
    @IBAction func GalvezLimoLink(_ sender: Any)
    {
        if let galvezLimoUrl = URL (string: "http://www.galvestonlimo.com/"){
            UIApplication.shared.open(galvezLimoUrl, options: [:])
        }
    }
    
    @IBAction func TaxiLink(_ sender: Any)
    {
        if let taxiUrl = URL (string: "https://www.google.com/?gws_rd=ssl#q=galveston+taxi+services")
        {
            UIApplication.shared.open(taxiUrl, options: [:])
        }
    }
}
