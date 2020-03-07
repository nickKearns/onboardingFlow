//
//  BoxDetailVC.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/6/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class BoxDetailVC: UIViewController {
    
    
    var box: Box!
    
    var items: [Item] = []
    
    var itemTable: UITableView = {
        let itemTable = UITableView()
        itemTable.translatesAutoresizingMaskIntoConstraints = false
        itemTable.rowHeight = 150
        return itemTable
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupTable()
    }
    
    
    func setupTable() {
        self.view.addSubview(itemTable)
        view.backgroundColor = .white
        itemTable.register(ItemTableCell.self, forCellReuseIdentifier: "ItemTableCell")
        itemTable.delegate = self
        itemTable.dataSource = self
        
        
        NSLayoutConstraint.activate([
            itemTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            itemTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            itemTable.topAnchor.constraint(equalTo: self.view.topAnchor),
            itemTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        
        
        
    }
    
    func setupData() {
        for item in box.items {
            items.append(item)
        }
    }
    
}

extension BoxDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return box.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableCell.identifier, for: indexPath) as! ItemTableCell
        print(items[indexPath.row].name)
        cell.configure(items[indexPath.row])
        return cell
    }
    
    
    
    
    
    
    
}

