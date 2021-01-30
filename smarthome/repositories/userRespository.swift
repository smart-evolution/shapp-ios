//
//  UserRespository.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct UserRepository {
    let api: Api
    
    func login(username: String, apiAddress: String, password: String, completion: @escaping (Bool) -> ()) {
        self.api.post(url: "\(apiAddress)/api/login",
                      body: "username=\(username)&password=\(password)",
                      completion: completion)
    }
}
