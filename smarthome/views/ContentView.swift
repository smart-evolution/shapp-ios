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
    var userUsecases: UserUsecases
    var agentUsecases: AgentUsecases
    var agents: Array<String>
    
    var body: some View {
        return Group {
            if isLogged {
                TabView {
                    AppView(agentUsecases: self.agentUsecases)
                        .tabItem {
                            Image(systemName: "list.dash")
                            Text("Dashboard")
                        }
                    
                    ProfileView(isLogged: $isLogged)
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                }
            } else {
                LoadingView(isShowing: $isLoading) {
                    LoginView(isLogged: $isLogged, isLoading: $isLoading, userUsecases: self.userUsecases)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isLogged: false, isLoading: false, userUsecases: UserUsecases(userRepository: UserRepository(api: Api())), agentUsecases: AgentUsecases(agentRepository: AgentRepository(api: Api())), agents: [])
    }
}
