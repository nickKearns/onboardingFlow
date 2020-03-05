//
//  BoxTableCell.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class BoxTableCell: UITableViewCell {

    static let identifier = "BoxTableCell"
    
    @IBOutlet weak var boxImage: UIImageView!
    
    @IBOutlet weak var boxLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ box: Box) {
        self.boxLabel.text = box.date
        self.boxImage.image = UIImage(named: "box")
    }
    
}
