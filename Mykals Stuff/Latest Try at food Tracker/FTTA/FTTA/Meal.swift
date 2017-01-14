//
//  Meal.swift
//  FTTA
//
//  Created by michael miller on 1/13/17.
//  Copyright © 2017 TIAS. All rights reserved.
//

import UIKit

class Meal
{
    
//MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
//END SECTION
    
    
//MARK: Initialization
    

    
    init?(name: String, photo: UIImage?, rating: Int)
    {
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0
        {
            return nil
        }
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
}
