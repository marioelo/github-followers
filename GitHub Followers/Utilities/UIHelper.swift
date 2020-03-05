//
//  UIHelper.swift
//  GitHub Followers
//
//  Created by Elorza Moore, Mario on 18-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

enum UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumItemSpacing: CGFloat = 10
        let avaliableWidth              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = avaliableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
