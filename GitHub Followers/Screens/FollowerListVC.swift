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
        navigationController?.navigationBar.prefersLargeTitles  = true
        view.backgroundColor                                    = .systemBackground
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.pressentGFAlertOnMainThread(title: "Bad Stuff Happend", message: errorMessage!.rawValue, buttonTitle: "Ok")
                return
            }
            
            print("Followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
