//
//  MealTableViewCell.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/14/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    //MARK: Properties
    // Label for meal
    @IBOutlet weak var nameLabel: UILabel!
   // Image
    @IBOutlet weak var photoImageView: UIImageView!
    // rating ctl
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
