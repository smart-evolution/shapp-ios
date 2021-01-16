//
//  AppView.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

import SwiftUI

struct AppView: View {    
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                Text("App view")
                    .font(.headline)
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
