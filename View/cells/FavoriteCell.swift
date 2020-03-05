//
//  FavoriteCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class FavoriteCell: UICollectionViewCell {
    
    static var identifier: String = "FavoriteCell"
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
     
    func setup() {
        imageView.layer.cornerRadius = 10
    }
    

}
