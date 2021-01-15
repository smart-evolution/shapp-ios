//
//  LoginUIView.swift
//  smarthome
//
//  Created by Oskar on 13/01/2021.
//

import SwiftUI
import UIKit

struct LoginUIView: View {
    @Binding var isLogged: Bool
    @State private var name = ""
    @State private var password = ""
    
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
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(CSizings.rounding)
            
            Button(action: {
                self.isLogged = true
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

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView(isLogged: .constant(false))
    }
}
