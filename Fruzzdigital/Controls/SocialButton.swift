//
//  SocialButton.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct SocialButton: View {
    
    let imageName: String
    
    var body: some View {
        Button(action: {}) {
            Image(imageName)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .white1, lineWidth: 1))
        }
    }
}

struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            SocialButton(imageName: "facebook")
            SocialButton(imageName: "google")
            SocialButton(imageName: "apple")
        }
        
    }
}
