//
//  ViewController.swift
//  subscription
//
//  Created by Nicholas Kearns on 1/28/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    
    var scrollView: UIScrollView = {
        var scrollView = UIScrollView(frame: .zero)
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    var pageController: UIPageControl = {
        var pageController = UIPageControl()
        pageController.translatesAutoresizingMaskIntoConstraints = false
        pageController.tintColor = .black
        pageController.numberOfPages = 3
        return pageController
    }()
    var stackView: UIStackView = {
        var stackView = UIStackView()
        stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    var firstView: OnboardView!
    var secondView: OnboardView!
    var thirdView: OnboardView!
    
    
    
    func setupScrollView() {
        self.view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 1/1),
            scrollView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/1),
            scrollView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            scrollView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])
        scrollView.delegate = self
    }
    
    func setupPageController() {
        self.view.addSubview(pageController)
        NSLayoutConstraint.activate([ //isActive = true a group of contraints
            pageController.heightAnchor.constraint(equalToConstant: 50),
            pageController.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50),
            pageController.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor),
        ])
    }
    
    
   
    
    
    
    override func loadView() {
        super.loadView()
        
        
        
        
        
        
        self.scrollView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
        
        
       
        
        firstView = OnboardView(color: .darkGray, message: "Welcome to Golf Box!", imageName: "tigerWoods", isLastPage: false)
        stackView.addArrangedSubview(firstView)
        
        NSLayoutConstraint.activate([
            firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            
        ])
        
        secondView = OnboardView(color: .gray, message: "The number one golf subscription box", imageName: "titleist_iron", isLastPage: false)
        stackView.addArrangedSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
        ])
        
        thirdView = OnboardView(color: .lightGray, message: "sign up now!", imageName: "golf_PNG32", isLastPage: true)
        thirdView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        stackView.addArrangedSubview(thirdView)
    
        
        NSLayoutConstraint.activate([
            thirdView.widthAnchor.constraint(equalToConstant: view.frame.size.width)
        ])
        
    
        
        
    }
    
    @objc func continueButtonTapped() {
        let loginVC = LoginVC()
        let navigationController = UINavigationController(rootViewController: loginVC)
        self.view.window!.rootViewController = navigationController
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setupPageController()
        

        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageController.currentPage = Int(pageNumber)
    }
    
    
    
}

