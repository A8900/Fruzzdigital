//
//  PasswordChangedView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 08/03/1444 AH.
//

import SwiftUI

struct PasswordChangedView: View {
    var body: some View {
        VStack (spacing: 0){
            
            Image("checkmark")
                .padding(.bottom, 35)
            
            Text("Password Changed!")
                .foregroundColor(.dark)
                .font(.urbanist700z)
                .padding(.bottom, 8)
            
            Text("Your password has been changed successfully.")
                .foregroundColor(.gray)
                .font(.urbanist500)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 75)
                .padding(.bottom, 40)
            
            Button(action: {}) {
                CustomButton(title: "Back to Login")
            }
        }
        .padding(.horizontal, 22)
        
    }
}

struct PasswordChangedView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordChangedView()
    }
}
