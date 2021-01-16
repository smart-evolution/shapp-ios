//
//  smarthomeApp.swift
//  smarthome
//
//  Created by Oskar on 12/01/2021.
//

import SwiftUI

@main
struct smarthomeApp: App {
    @State var isLogged = false
    var userUsecases: UserUsecases
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        self.userUsecases = UserUsecases()
    }
}
