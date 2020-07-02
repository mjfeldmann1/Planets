//
//  CollectionViewCell.swift
//  Planets
//
//  Created by Michael Feldmann on 7/2/20.
//  Copyright © 2020 Bounding-22 LLC. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
