//
//  Follower.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 15-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
