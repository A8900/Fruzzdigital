//
//  RegisterView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct RegisterView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmpassword = ""

    var body: some View {
     VStack{
            VStack(alignment: .leading, spacing: 0) {
                Image("im<")
                    .frame(width: 41, height: 41)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .white1, lineWidth: 1))
                    .padding(.bottom, 28)
                
                Text("Hello! Register to get started")
                    .font(.urbanist700f)
                    .foregroundColor(.dark)
                    .padding(.bottom, 32)
                
                VStack (spacing: 12) {
                    CustomTextField(title: "Username")
                    CustomTextField(title: "Email")
                    CustomTextField(title: "Password")
                    CustomTextField(title: "Confirm Password")
                }
                .padding(.bottom, 30)
                
                CustomButton(button1: "Register")
                   .padding(.bottom, 35)
               
                SocialsAuthView(title: "Or Register with")
                
                Spacer()
            }
                HStack {
                Text("Already have an account?")
                        .foregroundColor(Color .dark)
                        .font(.urbanist700)
                    
                Button(action: {}) {
                    Text("Login Now")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

