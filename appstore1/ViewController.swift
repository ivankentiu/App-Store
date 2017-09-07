//
//  ViewController.swift
//  appstore1
//
//  Created by Ivan Ken Tiu on 07/09/2017.
//  Copyright © 2017 Ivan Ken Tiu. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController {
    
    private let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.white
        
        //register the cell
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        return cell
    }

    
    //number of items in section -> tell the controller I want to return 3 cells
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
}

class CategoryCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = UIColor.red
    }
    
   
}
