//
//  FeaturedSection.swift
//  subscription
//
//  Created by Nicholas Kearns on 3/5/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//
import UIKit

struct FeaturedSection: Section {
    let numberOfItems = 6
    
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.50), heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(315), heightDimension: .absolute(220))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedCell.identifier, for: indexPath) as! FeaturedCell
        cell.imageView.image = UIImage(named: "taylor_made_iron")
        return cell
    }
    
    
}
