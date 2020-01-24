//
//  UserInfoVC.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 23-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)
    }
    
    @objc func dismissVC() {
        self.dismiss(animated: true)
    }

}
