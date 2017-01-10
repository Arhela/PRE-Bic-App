//
//  Meal.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/9/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//



import UIKit

class Meal
{
    // MARK Properties 
    
    var name: String
    
    var photo : UIImage?
    
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String,photo: UIImage, rating:Int)
    {
        
       // error check
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        

    }
    
}


