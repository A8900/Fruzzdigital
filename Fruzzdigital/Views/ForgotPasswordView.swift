//
//  ForgotPasswordView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct ForgotPasswordView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var email = ""
    var body: some View {
        ZStack {
            VStack{
                VStack(alignment:.leading , spacing: 0){
                    
                    BackButton(action: dismiss)
                    .padding(.bottom, 28)
                    
                    Text("Forgot Password?")
                        .font(.urbanist700f)
                        .foregroundColor(.dark)
                        .padding(.bottom, 10)
                    
                    Text("Don't worry! it occurs Please enter the email addresss linked with your account.")
                        .foregroundColor(.gray)
                        .font(.urbanist500z)
                        .padding(.trailing, 28)
                        .padding(.bottom, 32)
                    
                    CustomTextField(title: "Enter your email", text: $email)
                        .padding(.bottom, 38)
                    
                    CustomActionButton(title: "Send Code", action: {})
                    
                    Spacer()
                }
                
                HStack (alignment: .center) {
                    Text("Remember Password?")
                        .foregroundColor(Color . dark)
                        .font(.urbanist700)
                    
                    Button(action: {}) {
                        
                        Text("Login")
                            .foregroundColor(Color . primary1)
                            .font(.urbanist700)
                    }
                    
                }
                 
            }
        }
        .padding(.horizontal, 22)
        .padding(.top, 12)
        .padding(.bottom, 26)
        .navigationBarHidden(true)
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
