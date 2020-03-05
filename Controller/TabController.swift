//
//  TabController.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/4/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
        
    }
    
    
    func setupViewControllers() {
        
        let homeVC = HomeVC()
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        let navController1 = UINavigationController(rootViewController: homeVC)
        

        let newBoxVC = NewBoxVC()
        newBoxVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let navController2 = UINavigationController(rootViewController: newBoxVC)
        
        
        viewControllers = [navController1, navController2]
        
    }
    
    
    
    
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
    
    
}
