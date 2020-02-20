//
//  FavoritesListVC.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 09-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
                break
            case .failure(let error):
                break
            }
        }
    }
}
