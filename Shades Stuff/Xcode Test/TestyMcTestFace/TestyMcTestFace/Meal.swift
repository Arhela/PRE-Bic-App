//
//  Meal.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/9/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//



import UIKit


import os.log



class Meal : NSObject, NSCoding
{
    
    
    //MARK: Types
    
    struct PropertyKey
    {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    

    
    // MARK Properties
    
    var name: String
    
    var photo : UIImage?
    
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String,photo: UIImage?, rating:Int)
    {
        
       // error check
       // if name.isEmpty || rating < 0 {
         //   return nil
        //}
        
        guard !name.isEmpty else
        { // the name must have a value
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else
        {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        

    }
    
    //MARK: NSCoding
    
    
    func encode(with aCoder: NSCoder)
    {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(rating, forKey: PropertyKey.rating)
    }
    

    
}


