//
//  LoginVC.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/4/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit


class LoginVC: UIViewController {
    
    
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Golf Box"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 80)
        
        return titleLabel
    }()
    
    
    let continueButton: UIButton = {
        let continueButton = UIButton()
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.setTitle("Sign In", for: .normal)
        return continueButton
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "box")
        return imageView
    }()
    
    
    let usernameField: UITextField = {
        let usernameField = UITextField()
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.textAlignment = .center
        usernameField.backgroundColor = .white
        usernameField.placeholder = "Username"
        return usernameField
    }()
    
    let passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.textAlignment = .center
        passwordField.backgroundColor = .white
        passwordField.placeholder = "Password"
        return passwordField
        
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [.curveEaseOut], animations: {
            self.view.layoutIfNeeded()
            self.titleLabel.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            
            
        }, completion: { _ in
            UIView.animate(withDuration: 1.5, delay: 0.0, animations:
                {
                    UIView.animate(withDuration: 1.5, animations: {
                        self.continueButton.alpha = 1.0
                    }, completion: nil)
            })
            
            
        }
            
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        self.title = "Login"
        setImageView()
        setTitleLabel()
        setUsernameField()
        setPasswordField()
        setContinueButton()
        
    }
    
    
    
    func setTitleLabel() {
        self.view.addSubview(titleLabel)
        
        titleConstraintEnd = titleLabel.centerYAnchor.constraint(equalTo: imageView.topAnchor, constant: -60)
        titleConstraintStart = titleLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor, constant: 5)
        titleConstraintStart.isActive = true
        titleLabel.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        
        titleLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
    }
    
    
    
    func setImageView() {
        self.view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20),
            imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25),
            imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.15)
        ])
    }
    
    func setUsernameField() {
        self.view.addSubview(usernameField)
        NSLayoutConstraint.activate([
            usernameField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            usernameField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
            usernameField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
        ])
        
        
        
    }
    
    func setPasswordField() {
        self.view.addSubview(passwordField)
        NSLayoutConstraint.activate([
            passwordField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 15),
            passwordField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
            
        ])
        
    }
    
    
    func setContinueButton() {
        self.view.addSubview(continueButton)
        continueButton.addTarget(self, action: #selector(continueToHome), for: .touchUpInside)
        NSLayoutConstraint.activate([
            continueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            continueButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 25),
            continueButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75)
            
        ])
        
        
    }
    
    @objc func continueToHome() {
        self.view.window?.rootViewController? = TabController()
    }
    
    
    
}
