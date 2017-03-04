//
//  SchEventTableViewCell.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 3/3/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class SchEventTableViewCell: UITableViewCell
{
    
    //Properties
    // event label
    @IBOutlet weak var eventLabel: UILabel!
    
    // location label
    @IBOutlet weak var locLabel: UILabel!
    
    // time label
    @IBOutlet weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
