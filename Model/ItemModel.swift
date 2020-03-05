//
//  ItemModel.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import Foundation
import UIKit



struct Item {
    let name: String
    let image: UIImage
    
    init(name: String, image: UIImage) {
        self.name = name
        self.image = image
    }
    
}


struct Box {
    let date: String
    let image: UIImage = UIImage.init(named: "box")!
    let items: [Item]
    
    init(date: String, items: [Item]) {
        self.date = date
        self.items = items
    }
    
}
