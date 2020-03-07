//
//  ItemTableCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class ItemTableCell: UITableViewCell {
    
    

    static var identifier: String = "ItemTableCell"
    
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ item: Item) {
        itemLabel.text = item.name
        itemImage.image = item.image
    }
    
}
