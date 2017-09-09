//
//  ViewController.swift
//  appstore1
//
//  Created by Ivan Ken Tiu on 07/09/2017.
//  Copyright © 2017 Ivan Ken Tiu. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    private let cellId = "cellId"
    
    // from Models.swift
    var appCategories: [AppCategory]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Data Source for the collection (static function)
        appCategories = AppCategory.sampleAppCategories()
        
        collectionView?.backgroundColor = UIColor.white
        
        // register the cell
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        
        // works when added in the CategoryCell
        cell.appCategory = appCategories?[indexPath.item]
        
        return cell
    }

    
    // number of items in section -> tell the controller I want to return 3 cells, one row only? only one category in Models.swift
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // unwrapped it since its optional, cannot return directly
        if let count = appCategories?.count {
            return count
        }
        
        // if nothing is inside
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }
}


