//
//  LoginUIView.swift
//  smarthome
//
//  Created by Oskar on 13/01/2021.
//

import SwiftUI

struct LoginUIView: View {
    @Binding var isLogged: Bool
    @State private var name = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("User", text: $name)
            TextField("Password", text: $password)
            Button(action: {
                self.isLogged = true
            }) {
                Text("Login")
            }
        }
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView(isLogged: .constant(false))
    }
}
