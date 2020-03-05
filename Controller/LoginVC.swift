//
//  LoginVC.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/4/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit


class LoginVC: UIViewController {
    
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
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: imageView.topAnchor, constant: -60),
            titleLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            
        ])
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
