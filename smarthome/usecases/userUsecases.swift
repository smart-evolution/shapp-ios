//
//  user.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

struct UserUsecases {
    let userRepository: UserRepository
    
    func login(username: String, apiAddress: String, password: String, completion: @escaping (Bool) -> ()) {
        self.userRepository.login(username: username, apiAddress: apiAddress, password: password, completion: completion)
    }
}
