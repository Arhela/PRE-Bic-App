//
//  MealTableViewCell.swift
//  FTTA
//
//  Created by michael miller on 1/17/17.
//  Copyright © 2017 TIAS. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    
//MARK:Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
//MARK: Default code
    override func awakeFromNib()
    {
        // Initialization code
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        // Configure the view for the selected state
        super.setSelected(selected, animated: animated)
    }

}
