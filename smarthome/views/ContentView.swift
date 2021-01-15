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
                VStack(alignment: .leading) {
                    Text("App View")
                        .font(.headline)
                    
                }
            } else {
                LoginUIView(isLogged: $isLogged)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
