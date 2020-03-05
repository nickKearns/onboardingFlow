//
//  TitleCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
    
    static var identifier: String = "TitleCell"
    
    

    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func set(title: String) {
        labelTitle.text = title
    }


}
