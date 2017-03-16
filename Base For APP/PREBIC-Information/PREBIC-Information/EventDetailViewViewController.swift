//
//  EventDetailViewViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 3/16/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class EventDetailViewViewController: UIViewController {

  //MARK Outlets
    
    
    @IBOutlet weak var TimeLabel: UILabel!
    
    @IBOutlet weak var TitleLabel: UIImageView!
    
    @IBOutlet weak var SpeakerLabel: UILabel!
    
    @IBOutlet weak var LocationLabel: UILabel!
    
    @IBOutlet weak var DetailTextView: UITextView!
    
    
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

}