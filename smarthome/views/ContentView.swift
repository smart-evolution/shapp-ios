//
//  ContentView.swift
//  smarthome
//
//  Created by Oskar on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isLogged = false
    @State var isLoading = false
    @State var agents: Array<AgentModel>
    var userUsecases: UserUsecases
    var agentUsecases: AgentUsecases
    var settings = UserSettings()
    
    var body: some View {
        if isLogged {
            TabView {
                AppView(agentUsecases: self.agentUsecases, agents: $agents)
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Dashboard")
                    }
                
                ProfileView(isLogged: $isLogged)
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }.environmentObject(settings)
        } else {
            LoadingView(isShowing: $isLoading) {
                LoginView(isLogged: $isLogged, isLoading: $isLoading, userUsecases: self.userUsecases).environmentObject(settings)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isLogged: false, isLoading: false, agents: [], userUsecases: UserUsecases(userRepository: UserRepository(api: Api())), agentUsecases: AgentUsecases(agentRepository: AgentRepository(api: Api())))
    }
}
