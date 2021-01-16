//
//  user.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

struct UserUsecases {
    let api: Api
    
    func login(completion: @escaping (Bool) -> ()) {
        self.api.get(url: CServices.service, completion: completion)
    }
}
