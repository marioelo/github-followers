//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Mario Elorza on 15-01-20.
//  Copyright © 2020 Mario Elorza. All rights reserved.
//

import UIKit

class NetworkManager {
    static let shared   = NetworkManager()
    private let baseURL = "https://api.github.com"
    let cache           = NSCache<NSString, UIImage>()
    
    private init() {}
    
    //    MARK: getFollowers
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
//        creeate the url
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
//        Basic way of networking
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
    
    
//    MARK: getUserInfo
    func getUserInfo(for username: String, completed: @escaping (Result<User, GFError>) -> Void) {
            let endpoint = baseURL + "/users/\(username)"
            
    //        creeate the url
            guard let url = URL(string: endpoint) else {
                completed(.failure(.invalidUsername))
                return
            }
            
    //        Basic way of networking
            let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
                if let _ = error {
                    completed(.failure(.unableToComplete))
                    return
                }
                
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    completed(.failure(.invalidResponse))
                    return
                }
                
                guard let data = data else {
                    completed(.failure(.invalidData))
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let user = try decoder.decode(User.self, from: data)
                    completed(.success(user))
                } catch {
                    completed(.failure(.invalidData))
                }
            }
            
            task.resume()
        }
}































