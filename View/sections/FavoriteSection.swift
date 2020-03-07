//
//  FeaturedSection.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//
import UIKit

struct FavoriteSection: Section {
    let numberOfItems = 6
    
    let images: [UIImage] = [UIImage(named: "driver")!, UIImage(named: "putter")!, UIImage(named: "golf_bag")!,
                             UIImage(named: "hat")!, UIImage(named: "prov1")!, UIImage(named: "glove")!
    ]
    let names = ["TaylorMade M2", "Odessey putter", "Callaway Bag", "Tiger Woods Hat", "ProV1", "Ping Glove"]
    
    
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FavoriteCell.identifier, for: indexPath) as! FavoriteCell
        cell.imageView.image = images[indexPath.row]
        cell.itemLabel.text = names[indexPath.row]
        return cell
    }
    
    
}
