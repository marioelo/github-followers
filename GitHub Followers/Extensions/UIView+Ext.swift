//
//  UIView+Ext.swift
//  GitHub Followers
//
//  Created by Elorza Moore, Mario on 02-03-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
