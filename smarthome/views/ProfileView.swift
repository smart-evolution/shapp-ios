//
//  ProfileView.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

import SwiftUI

struct ProfileView: View {
    @Binding var isLogged: Bool
    
    var body: some View {
        Button(action: {
            self.isLogged = false
        }) {
            Text("Logout")
        }.font(.headline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isLogged: .constant(false))
    }
}
