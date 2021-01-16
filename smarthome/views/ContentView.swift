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
    
    var body: some View {
        return Group {
            if isLogged {
                TabView {
                    AppView()
                        .tabItem {
                            Image(systemName: "list.dash")
                            Text("Dashboard")
                        }
                    
                    ProfileView(isLogged: $isLogged)
                        .tabItem {
                            Image(systemName: "person")
                            Text("Dashboard")
                        }
                }
            } else {
                ZStack(alignment: .center) {
                    LoadingView(isShowing: $isLoading) {
                        LoginView(isLogged: $isLogged, isLoading: $isLoading, userUsecases: self.userUsecases)
                    }
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isLogged: false, isLoading: false, userUsecases: UserUsecases(api: Api()))
    }
}
