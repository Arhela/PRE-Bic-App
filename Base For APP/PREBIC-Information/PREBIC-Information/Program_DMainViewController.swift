//
//  Program_DMainViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 1/24/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class Program_DMainViewController: UIViewController {

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
    
    @IBAction func DismissToMain(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }

}
