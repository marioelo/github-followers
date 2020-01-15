//
//  FollowerListVC.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 14-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden             = false
        navigationController?.navigationBar.prefersLargeTitles  = true
        view.backgroundColor                                    = .systemBackground
    }
}
