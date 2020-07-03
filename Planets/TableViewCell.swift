//
//  TableViewCell.swift
//  Planets
//
//  Created by Olivia Edwards on 6/29/20.
//  Copyright © 2020 Bounding-22 LLC. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var planetImage: UIImageView!
    
    @IBOutlet weak var planetName: UILabel!
    
    @IBOutlet weak var planetDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
    }

}
