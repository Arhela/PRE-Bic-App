//
//  PrebicInfoViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 4/8/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class PrebicInfoViewController: UIViewController {

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
    
    
    
    // MARK ACtions for web URLS
    
    @IBAction func BoardMemberLink(_ sender: Any)
    {
        if let boaredMemberUrl = URL(string: "https://unfazedcreation.wixsite.com/prebicdata/board-members") {
            UIApplication.shared.open(boaredMemberUrl, options: [:])
        }

    }
    
    
    @IBAction func AllMembersLink(_ sender: Any)
    {
        if let allMemberUrl = URL (string: "https://unfazedcreation.wixsite.com/prebicdata/members-and-organizing-committee")
        {
            UIApplication.shared.open(allMemberUrl, options: [:])
        }
    }
    
    
    @IBAction func OrgComittieLink(_ sender: Any)
    {
        if let orgcomittieUrl = URL (string: "https://unfazedcreation.wixsite.com/prebicdata/copy-of-members")
        {
            UIApplication.shared.open(orgcomittieUrl, options: [:])
        }
    }
    
    @IBAction func GuestSpeakerLink(_ sender: Any)
    {
        if let guestSpeakerUrl = URL (string: "https://unfazedcreation.wixsite.com/prebicdata/guest-speakers")
        {
            UIApplication.shared.open(guestSpeakerUrl, options: [:])
        }
    }
    
    

}
