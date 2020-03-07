//
//  FeaturedSection.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//
import UIKit

struct NewBoxSection: Section {
    
    
    let numberOfItems = 8
    
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
    
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.33))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewBoxCell.identifier, for: indexPath) as! NewBoxCell
        cell.setImage(image: listOfItems[indexPath.row].image, withSelection: true)
//        cell.imageView.image = UIImage(named: "taylor_made_iron")
        return cell
    }
    
    
}
