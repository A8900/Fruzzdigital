//
//  CreatenewpasswordView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 08/03/1444 AH.
//

import SwiftUI

struct CreatenewpasswordView: View {
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    var body: some View {
               VStack {
                   VStack(alignment: .leading, spacing: 0){
                   Button(action: {}) {
                       Image("im<")
                           .foregroundColor(Color .white1)
                           .frame(width: 41, height: 41)
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .white1, lineWidth: 1))
                           .padding(.bottom, 28)
                   }
                       Text("Create new password")
                           .font(.urbanist700f)
                           .foregroundColor(.dark)
                           .padding(.bottom, 10)

                       Text("Your new password must be unique from those previously used.")
                           .foregroundColor(.gray)
                           .font(.urbanist500z)
                           .padding(.bottom, 32)
                
                VStack(alignment: .leading, spacing: 15){
            
                    CustomTextField(title: "New Password")
                    CustomTextField(title: "Confirm Password")
        
                }
                .padding(.bottom, 38)
                
                       CustomActionButton(title: "Reset Password", action: {})
                      
            }
               Spacer()
        }
               .padding(.horizontal, 22)
               .padding(.top, 12)
               .padding(.bottom, 26)

    }
}

struct CreatenewpasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatenewpasswordView()
    }
}
