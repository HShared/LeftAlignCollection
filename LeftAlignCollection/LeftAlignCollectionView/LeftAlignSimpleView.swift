//
//  SimpleView.swift
//  Banner
//
//  Created by ATH on 2020/3/18.
//  Copyright © 2020 sco. All rights reserved.
//

import UIKit

class LeftAlignSimpleView: UIView,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    let reuseIdentifier = "UICollectionViewCellId"
    var layout:UICollectionViewLeftAlignFlowLayout = {
          var layout = UICollectionViewLeftAlignFlowLayout()
           layout.itemSize = CGSize(width: 60, height: 60)
           layout.minimumLineSpacing = 10
           layout.minimumInteritemSpacing = 5
           layout.scrollDirection = .vertical
          return layout
       }()
       
       var collectionView: UICollectionView!
       
       override init(frame: CGRect) {
           collectionView = UICollectionView(frame:frame, collectionViewLayout: layout)
           super.init(frame: frame)
           collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier:reuseIdentifier)
           collectionView.showsVerticalScrollIndicator = false
           collectionView.delegate = self
           collectionView.dataSource = self
           addSubview(collectionView)
           collectionView.backgroundColor = UIColor.clear
           self.backgroundColor = UIColor.clear
       }
       required init?(coder: NSCoder) {
           super.init(coder: coder)
           
       }
    
    override func layoutSubviews(){
        super.layoutSubviews()
        self.collectionView.frame = self.bounds
        
    }
    
    // MARK: -
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 80
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier:reuseIdentifier, for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let randomW:CGFloat = CGFloat(arc4random()%50 + 50)
//        let randomH:CGFloat = CGFloat(arc4random()%50 + 50)
        return CGSize(width:randomW, height:20)
    }
    
}
