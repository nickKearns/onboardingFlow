//
//  PastBoxesVC.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.


import UIKit

class PastBoxesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var boxItems: [Item]!
    var boxes: [Box]!
    
    let pastBoxesTable: UITableView = {
        let pastBoxesTable = UITableView()
        pastBoxesTable.translatesAutoresizingMaskIntoConstraints = false
        return pastBoxesTable
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateData()
        setTable()
        
    }
    
    
    func populateData() {
        
        let golfBag = Item(name: "Golf Bag", image: UIImage(named: "golf_bag")!)
        let tp5 = Item(name: "TaylorMade TP5 Golf balls", image: UIImage(named: "tp5")!)
        let iron = Item(name: "Titleist p750", image: UIImage(named: "titleist_iron")!)
        let prov1 = Item(name: "Titleist ProV1 golf balls", image: UIImage(named: "prov1")!)
        let putter = Item(name: "Odessey Putter", image: UIImage(named: "putter")!)
        let driver = Item(name: "TaylorMade M2 Driver", image: UIImage(named: "driver")!)
        let hat = Item(name: "Tiger Woods Hat", image: UIImage(named: "hat")!)
        let glove = Item(name: "Ping Glove", image: UIImage(named: "glove")!)
        
        
        
        boxes = [
            Box(date: "December 2019", items: [tp5, hat, glove, driver]),
            Box(date: "January 2020", items: [iron, prov1, putter]),
            Box(date: "February 2020", items: [golfBag, hat, glove])
            
        ]
    }
    
    func setTable(){
        self.view.addSubview(pastBoxesTable)
        pastBoxesTable.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        pastBoxesTable.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        pastBoxesTable.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        pastBoxesTable.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        
        pastBoxesTable.register(UINib(nibName: "BoxTableCell", bundle: nil), forCellReuseIdentifier: "BoxTableCell")
        pastBoxesTable.delegate = self
        pastBoxesTable.dataSource = self
        
        
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell( withIdentifier: BoxTableCell.identifier, for: indexPath) as! BoxTableCell
        let box = boxes[indexPath.row]
        cell.configure(box)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedBox = boxes[indexPath.row]
        let boxDetailVC = BoxDetailVC()
        boxDetailVC.box = selectedBox
        navigationController?.pushViewController(boxDetailVC, animated: true)
        
        
    }
    
    
    
    
    
}
