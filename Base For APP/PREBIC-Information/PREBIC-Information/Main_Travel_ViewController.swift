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
        
    }

    @IBAction func DirToHobbyToGalvez(_ sender: Any)
    {
        
    }
    
    @IBAction func SuperShuttleLink(_ sender: Any)
    {
        
    }
    
    @IBAction func UberLink(_ sender: Any)
    {
        
    }
    
    @IBAction func GalvezLimoLink(_ sender: Any)
    {
        
    }
    
    @IBAction func TaxiLink(_ sender: Any)
    {
        
    }
}
