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
    }
    
    func setupPageController() {
        self.view.addSubview(pageController)
        NSLayoutConstraint.activate([ //isActive = true a group of contraints
            pageController.heightAnchor.constraint(equalToConstant: 50),
            pageController.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50),
            pageController.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor),
        ])
    }
    
    
    func setupViews() {
        
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
        
        
       
        
        firstView = OnboardView(color: .blue, message: "Welcome to hike box!", imageName: "first_image", isLastPage: false)
        stackView.addArrangedSubview(firstView)
        
        NSLayoutConstraint.activate([
            firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            
        ])
        
        secondView = OnboardView(color: .green, message: "The best hiking subsription box", imageName: "second_image", isLastPage: false)
        stackView.addArrangedSubview(secondView)
        
        NSLayoutConstraint.activate([
            secondView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
        ])
        
        thirdView = OnboardView(color: .purple, message: "sign up now!", imageName: "third_image", isLastPage: true)
        stackView.addArrangedSubview(thirdView)
        
        NSLayoutConstraint.activate([
            thirdView.widthAnchor.constraint(equalToConstant: view.frame.size.width)
        ])
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        setupPageController()
        setupViews()
        
        
        //        scrollView.backgroundColor = .gray
        //        scrollView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageController.currentPage = Int(pageNumber)
    }
    
}

