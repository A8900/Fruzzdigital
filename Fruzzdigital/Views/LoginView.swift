//
//  LoginView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
        VStack (alignment: .leading, spacing: 0) {
            Image("im<")
                .frame(width: 41, height: 41)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .white1, lineWidth: 1))
                .padding(.bottom, 28)
            
            Text("Welcome back! Glad to see you. Again!")
                .foregroundColor(.dark)
                .font(.urbanist700f)
                .padding(.trailing, 80)
                .padding(.bottom, 32)
            
            VStack(spacing: 15) {
                CustomTextField(title: "Enter your email")
                CustomTextField(title: "Enter your password", imageName: "showPassword", password: true)
            }
            .padding(.bottom, 15)
            
            
            
            Text("Forgot Password?")
                .foregroundColor(.gray)
                .font(.urbanist600)
                .padding(.bottom, 30)
            
            
            CustomButton(button1: "Login")
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
            
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
