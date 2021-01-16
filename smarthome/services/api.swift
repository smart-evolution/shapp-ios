//
//  api.swift
//  smarthome
//
//  Created by Oskar on 16/01/2021.
//

import Foundation

struct Api {
    func get(url: String, completion: @escaping (Bool) -> ()) {
        let urlTarget = URL(string: url)!

        let task = URLSession.shared.dataTask(with: urlTarget) {(data, response, error) in
            guard let data = data else {
                completion(true)
                return
            }
            completion(true)
        }

        task.resume()
    }
}
