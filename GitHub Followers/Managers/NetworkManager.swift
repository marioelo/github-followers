//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 15-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared   = NetworkManager()
    let baseURL         = "https://api.github.com"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, ErrorMessage?) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
//        creeate the url
        guard let url = URL(string: endpoint) else {
            completed(nil, .invalidUsername)
            return
        }
        
//        Basic way of networking
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let _ = error {
                completed(nil, .unableToComplete)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, .invalidData)
            }
        }
        
        task.resume()
    }
}































