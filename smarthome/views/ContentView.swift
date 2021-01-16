//
//  ContentView.swift
//  smarthome
//
//  Created by Oskar on 12/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isLogged = false
    
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
                LoginView(isLogged: $isLogged)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
