//
//  LoginUIView.swift
//  smarthome
//
//  Created by Oskar on 13/01/2021.
//

import SwiftUI
import UIKit

struct LoginView: View {
    @Binding var isLogged: Bool
    @Binding var isLoading: Bool
    @State private var name = ""
    @State private var password = ""
    @EnvironmentObject var settings: UserSettings
    var userUsecases: UserUsecases
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Text("SMART HOME").font(.title)
            Text("iOS application")
                .font(.subheadline)
            
            Spacer()
            
            TextField("User", text: $name)
                .padding()
                .background(Color.white)
                .cornerRadius(CSizings.rounding)
            
            TextField("API", text: $settings.apiAddress)
                .padding()
                .background(Color.white)
                .cornerRadius(CSizings.rounding)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(CSizings.rounding)
            
            Button(action: {
                self.isLoading = true
                self.userUsecases.login(
                    username: self.name,
                    apiAddress: settings.apiAddress,
                    password: self.password,
                    completion: {
                        isLogged in
                        self.isLogged = isLogged
                        self.isLoading = !isLogged
                    })
            }) {
                Text("Login")
            }.font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(CColors.blue)
            .cornerRadius(CSizings.rounding)
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
        }.padding([.leading, .trailing], 28)
        .background(
            LinearGradient(gradient: Gradient(colors: [CColors.gray, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLogged: .constant(false), isLoading: .constant(false), userUsecases: UserUsecases(userRepository: UserRepository(api: Api())))
    }
}
