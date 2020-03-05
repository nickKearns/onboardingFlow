//
//  onboardView.swift
//  subscription
//
//  Created by Nicholas Kearns on 2/2/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class OnboardView: UIView {
    
    let stackView: UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    
    var messageLabel: UILabel = {
        var messageLabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.textColor = .white
        return messageLabel
    }()
    
    
    let imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let continueButton: UIButton = {
        let continueButton = UIButton()
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.setTitle("Continue", for: .normal)
        return continueButton
    }()
    
    var message: String!
    var imageName: String!
    var isLastPage: Bool!
    var color: UIColor!
    
    
    
        
        
        
        
        
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
            
            // make the stackview
            
            self.addSubview(stackView)
            NSLayoutConstraint.activate([
                stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                stackView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.60),
                stackView.widthAnchor.constraint(equalTo: self.widthAnchor)
            ])
            
            // make the image view
            
            self.imageView.image = UIImage(named: self.imageName)
            stackView.addArrangedSubview(imageView)
            NSLayoutConstraint.activate([
                imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.3)
            ])
            
            // make the message label
            
            stackView.addArrangedSubview(messageLabel)
            messageLabel.text = self.message
            
            
            //if it is the last page add the continue button
            
            continueButton.isHidden = self.isLastPage ? false : true
            stackView.addArrangedSubview(continueButton)

            
            //set up constraints for the continue button
            
            
        }
    
   
        
        
        
        
        
}
