//
//  NewBoxVC.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit


class NewBoxVC: UIViewController {
    
    var collectionView: UICollectionView!
    
    
    
    var listOfItems: [Item] = [
        Item(name: "TaylorMade TP5 golf ball", image: UIImage(named: "tp5")!),
        Item(name: "Titleist ProV1 golf ball", image: UIImage(named: "prov1")!),
        Item(name: "TaylorMade M2 Driver", image: UIImage(named: "driver")!),
        Item(name: "Odyssey Putter", image: UIImage(named: "putter")!),
        Item(name: "Tiger Woods Hat", image: UIImage(named: "hat")!),
        Item(name: "Ping Glove", image: UIImage(named: "glove")!),
        Item(name: "Titleist p750 Irons", image: UIImage(named: "titleist_iron")!),
        Item(name: "Callaway Golf Bag", image: UIImage(named: "golf_bag")!),
    ]
    
    
    lazy var sections: [Section] = [
        NewBoxSection()
    ]
    
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        var sections = self.sections
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, environment) -> NSCollectionLayoutSection? in
            return sections[sectionIndex].layoutSection()
        }
        return layout
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "What would you like?"
        self.view.backgroundColor = UIColor.white
        setupCollectionView()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        collectionView.register(UINib(nibName: "NewBoxCell", bundle: .main), forCellWithReuseIdentifier: NewBoxCell.identifier)
        self.view.addSubview(collectionView)
        collectionView.reloadData()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }
    
    
    
    var selectedIndexPath: IndexPath? {
        didSet {
            var indexPaths: [IndexPath] = []
            if let selectedIndexPath = selectedIndexPath {
                indexPaths.append(selectedIndexPath)
            }
            if let oldValue = oldValue {
                indexPaths.append(oldValue)
            }
            collectionView.performBatchUpdates({
                self.collectionView.reloadItems(at: indexPaths)
            })
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
    
}


extension NewBoxVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sections[section].numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewBoxCell.identifier, for: indexPath) as! NewBoxCell
        if indexPath == selectedIndexPath{
            cell.setImage(image: listOfItems[indexPath.row].image, withSelection: false)
        } else {
            cell.setImage(image: listOfItems[indexPath.row].image, withSelection: true)
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        if selectedIndexPath == indexPath {
            selectedIndexPath = nil
        } else {
            selectedIndexPath = indexPath
        }
        return false
    }
}


