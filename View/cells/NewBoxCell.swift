//
//  NewBoxCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class NewBoxCell: UICollectionViewCell {
    
    static var identifier: String = "NewBoxCell"
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }
    
    func setup() {
        imageView.layer.cornerRadius = 10
    }

    
    func setImage(image: UIImage, withSelection: Bool) {
        if withSelection {
            self.imageView.image = image.withRenderingMode(.alwaysOriginal)
        } else {
            self.imageView.image = image.withRenderingMode(.alwaysTemplate)
            self.imageView.tintColor = UIColor.gray
        }
    }
    
}
