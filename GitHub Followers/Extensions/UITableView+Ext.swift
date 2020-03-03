//
//  UITableView+Ext.swift
//  GitHub Followers
//
//  Created by Elorza Moore, Mario on 03-03-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
