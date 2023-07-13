//
//  LoginView.swift
//  FitFusion
//
//  Created by Cesar Melendez on 7/13/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isCreateAccountViewPresented = false
    @State private var isPasswordCorrect: Bool = false
    @State private var showErrorAlert: Bool = false
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("LoginPhoto")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("FitFusion")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                    
                    HStack {
                        Image(systemName: "mail")
                            .foregroundColor(.white)
                        TextField("Email", text:$email)
                            .foregroundColor(.white)
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
                            .foregroundColor(.white)
                        TextField("Password", text: $password)
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }.padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 2)
                                .foregroundColor(.white)
                        ).padding()
                    
                    Button(action: {
                        
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .foregroundColor(.black)
                                .opacity(0.5)).padding(.horizontal).alert(isPresented: $showErrorAlert, content: {
                                    Alert(title: Text("Error login please check email and password"))
                                })
                    }.padding()
                    .padding(.top)
                    
                    Button(action: {
                        isCreateAccountViewPresented.toggle()
                    }) {
                        Text("Create Account")
                    }.foregroundColor(.white)
                        .font(.title)
                    
                    Spacer()
                    Spacer()
                }
            }
            NavigationLink(destination: MainContent(), isActive: $isPasswordCorrect) {
                EmptyView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
