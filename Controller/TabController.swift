//
//  TabController.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/4/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class TabController: UITableViewController, UITabBarControllerDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.delegate = self
        
    }
    
    
    func setupViewControllers() {
        
        let homeVC = HomeVC()
        let newBoxesVC = NewBoxesVC()
        let pastBoxesVC = PastBoxesVC()
    
        
        
        
    }
    
    
    
    
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }
    
    
}
