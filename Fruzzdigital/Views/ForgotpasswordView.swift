//
//  ForgotpasswordView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct ForgotpasswordView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var email = ""
    var body: some View {
        ZStack {
            VStack{
                VStack(alignment:.leading , spacing: 0){
                    
                    Button(action: {
                        dismiss()
                    }) {
                        Image("im<")
                            .foregroundColor(Color .dark)
                            .frame(width: 41, height: 41)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color .white1, lineWidth: 1))
                    }
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
                    
                    CustomTextField(title: "Enter your email")
                        .padding(.bottom, 38)
                    
                    CustomButton(button1: "Send Code")
                    
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

struct ForgotpasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotpasswordView()
    }
}
