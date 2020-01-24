//
//  User.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 15-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    let bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
