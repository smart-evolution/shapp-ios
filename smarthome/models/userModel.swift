//
//  user.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

struct UserModel {
    var username: String
    var password: String
}

struct UserSessionResponse: Codable {
    var isSession: Bool
}
