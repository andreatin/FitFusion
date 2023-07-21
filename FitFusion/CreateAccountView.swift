//
//  CreateAccountView.swift
//  FitFusion
//
//  Created by Cesar Melendez on 7/13/23.
//

import SwiftUI
import FirebaseAuth

struct CreateAccountView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            
            Text("FitFusion")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            Spacer()
            Text("Create Account")
                .font(.largeTitle
                      .weight(.heavy)
                ).foregroundStyle(.white)
            
            HStack {
                Image(systemName: "mail")
                    .foregroundColor(.gray)
                TextField("Email", text:$email)
                    .foregroundColor(.gray)
                    .font(.title)
                    .fontWeight(.bold)
                
                if (email.count != 0) {
                    Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                        .frame(width: 30)
                        .fontWeight(.bold)
                        .foregroundColor(email.isValidEmail() ? .green : .red)
                }
            }.padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                ).padding()
            
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                TextField("Password", text: $password)
                    .foregroundColor(.gray)
                    .font(.title)
                    .fontWeight(.bold)
            }.padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                ).padding()
            
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .foregroundColor(.gray)
                        .font(.title)
                }
                Spacer()
                Button(action: {
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        if let error = error {
                            print(error)
                            return
                        }
                        if let authResult = authResult {
                            print("\(authResult.user.uid)")
                        }
                    }
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Create Account")
                        .foregroundColor(.gray)
                        .font(.title)
                }
                Spacer()
            }
            
            Spacer()
            
        }.background(.black) // end Vstack
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
