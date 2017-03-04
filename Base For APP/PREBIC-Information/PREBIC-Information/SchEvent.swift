//
//  SchEvent.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 3/2/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//



import UIKit

class SchEvent
{
    // MARK Properties
    // add properties to pass to Table View Cell
    
    var eventName : String
    
    var eventDiscription :String
    
    var eventLocation : String
    
    var  eventTime : String
    
    var eventSpeaker : String
    
    // add initilaizer
    
    init(name: String, discription: String, location: String, time: String, speaker: String )
    {
        self.eventName = name
        self.eventDiscription = discription
        self.eventLocation = location
        self.eventTime = time
        self.eventSpeaker = speaker
    }
    
}
