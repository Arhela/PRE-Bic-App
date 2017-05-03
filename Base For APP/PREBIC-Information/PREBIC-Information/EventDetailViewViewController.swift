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
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var SpeakerLabel: UILabel!
    
    @IBOutlet weak var LocationLabel: UILabel!
    
    @IBOutlet weak var DetailTextView: UITextView!
    
    //--------------------------------------------------
    // var 
    // An optional var to pass info from the tableview.  THis is an "optional" so swift can safely unwrap and see if it holds a value.
    
    var event: SchEvent?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let event = event
        {
            TimeLabel.text = event.eventTime
            TitleLabel.text = event.eventName
            SpeakerLabel.text = event.eventSpeaker
            LocationLabel.text = event.eventLocation
            DetailTextView.text = event.eventDiscription
            
            
        }
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
