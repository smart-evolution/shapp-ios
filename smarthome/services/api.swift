//
//  api.swift
//  smarthome
//
//  Created by Oskar on 16/01/2021.
//

import Foundation

struct UserSession: Codable {
    var isSession: Bool
}

struct Api {
    func get(url: String, completion: @escaping (Array<String>) -> ()) {
        let urlTarget = URL(string: url)!
        var request = URLRequest(url: urlTarget)
        
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            print("agents", data, response, error)
            guard let data = data else {
                completion([])
                return
            }
            
            completion([])
        }
        
        task.resume()
    }
    
    func post(url: String, body: String, completion: @escaping (Bool) -> ()) {
        let urlTarget = URL(string: url)!
        
        var request = URLRequest(url: urlTarget)
        request.httpMethod = "POST"
        request.httpBody = body.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else {
                completion(false)
                return
            }
            
            do {
                let userSession = try JSONDecoder().decode(UserSession.self, from: data)
                print("xxx:isLogged", userSession)
                completion(userSession.isSession)
                return
            } catch {
                completion(false)
            }
        }
        
        task.resume()
    }
}
