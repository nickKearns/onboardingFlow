//
//  onboardView.swift
//  subscription
//
//  Created by Nicholas Kearns on 2/2/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class OnboardView: UIView {
    
    
    var color: UIColor!
    var message: String!
    var imageName: String!
    var isLastPage: Bool!
    
    required init(color: UIColor, message: String, imageName: String, isLastPage: Bool) {
         super.init(frame: .zero)
        
        self.color = color
        self.message = message
        self.imageName = imageName
        self.isLastPage = isLastPage
        
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    
    
    
    
    
    
    func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = color
        
        
    }
    
    // add message, image name, isLastPage
    
    
    
}
