//
//  LoginView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 0) {
                BackButton(action: dismiss)
                .padding(.bottom, 28)
                
                Text("Welcome back! Glad to see you. Again!")
                    .frame(width: 280)
                    .foregroundColor(.dark)
                    .font(.urbanist700f)
                    .padding(.bottom, 32)
                
                VStack(spacing: 15) {
                    CustomTextField(title: "Enter your email")
                    CustomTextField(title: "Enter your password", imageName: "showPassword", password: true)
                }
                .padding(.bottom, 15)
                
                
                HStack(spacing: 0) {
                    Spacer()
                    NavigationLink(destination: ForgotpasswordView()) {
                        Text("Forgot Password?")
                            .foregroundColor(.gray)
                            .font(.urbanist600)
                            .padding(.bottom, 30)
                    }
                }
                
                CustomActionButton(title: "Login", action: {
                    print("azf")
                })
                    .padding(.bottom, 35)
                
                
                SocialsAuthView(title: "Or Login with")
                
                Spacer()
            }
            HStack{
                Text("Don't have an account?")
                    .foregroundColor(Color .dark)
                    .font(.urbanist700)
                Button(action: {}){
                    Text("Register Now")
                        .foregroundColor(Color .primary1)
                        .font(.urbanist700)
                }
            }
        }
        .padding(.horizontal, 22)
        .padding(.top, 12)
        .padding(.bottom, 26)
        .navigationBarHidden(true)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
