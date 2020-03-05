//
//  FeaturedCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class FeaturedCell: UICollectionViewCell {

    static var identifier: String = "FeaturedCell"
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    func setup(){
        imageView.layer.cornerRadius = 10
    }

}
