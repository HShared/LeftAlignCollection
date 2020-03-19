//
//  UICollectionViewLeftAlignFlowLayout.swift
//  Banner
//
//  Created by ATH on 2020/3/18.
//  Copyright © 2020 sco. All rights reserved.
//

import UIKit

class UICollectionViewLeftAlignFlowLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let attributeArray = super.layoutAttributesForElements(in: rect);
        let count = attributeArray?.count ?? 0
        if(count < 2){
            return attributeArray
        }
        for index in 1..<count{
            let currentAttri:UICollectionViewLayoutAttributes = attributeArray![index]
            let preAttri:UICollectionViewLayoutAttributes = attributeArray![index-1]
            if currentAttri.representedElementKind != nil && currentAttri.representedElementKind! == UICollectionView.elementKindSectionHeader{
                continue
            }
    
            let previousCellMaxX = preAttri.frame.maxX
            let previousCellMidY = preAttri.frame.midY
            let currentCellMidY =  currentAttri.frame.midY
            let minimumSpacing = self.minimumInteritemSpacing;
            if(previousCellMidY == currentCellMidY){
                var frame = currentAttri.frame;
                frame.origin.x = previousCellMaxX + minimumSpacing;
                currentAttri.frame = frame;
            }
        }
        return attributeArray
    }
    
    
    
}
