//
//  CategoryCell.swift
//  appstore1
//
//  Created by Ivan Ken Tiu on 08/09/2017.
//  Copyright © 2017 Ivan Ken Tiu. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "appCellId"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //create collection view
    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        //default scrolling is vertical so change to horizontal
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = UIColor.clear
        
        //before all the constraints will work turn this off
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
  
    
    func setupViews() {
        backgroundColor = UIColor.clear
        
        //add collection view unto the sub view hierarchy of this cell
        addSubview(appsCollectionView)
        
        //add the protocols above
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        
        //register AppCell to collection View
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
        //use layout contraints to plop view into my cell
        //expand horizontally from the left to the right edge v-0 being our appsCollectionView (-8- padding)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        
        //and the same for Vertical axis top to bottom
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        
    }
    
    //same method as the before
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height)
    }
    
  
    
}

class AppCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = UIColor.black
    }
}
