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
    var agentUsecases: AgentUsecases
    
    var body: some Scene {
        WindowGroup {
            ContentView(userUsecases: userUsecases, agentUsecases: agentUsecases, agents: [])
        }
    }
    
    init() {
        let api = Api()
        let userRepository = UserRepository(api: api)
        self.userUsecases = UserUsecases(userRepository: userRepository)
        
        let agentRepository = AgentRepository(api: api)
        self.agentUsecases = AgentUsecases(agentRepository: agentRepository)
    }
}
