//
//  UserRespository.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct UserRepository {
    let api: Api
    
    func login(username: String, password: String, completion: @escaping (Bool) -> ()) {
        self.api.post(url: CServices.service + "/api/login",
                      body: "username=\(username)&password=\(password)",
                      completion: completion)
    }
}
