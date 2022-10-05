//
//  SocialsAuthView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct SocialsAuthView: View {
    
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white1)
                Text(title)
                    .foregroundColor(.gray)
                    .font(.urbanist500z)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white1)
            }
            HStack (alignment: .center, spacing: 15) {
                SocialButton(imageName: "facebook")
                SocialButton(imageName: "google")
                SocialButton(imageName: "apple")
            }
        }
    }
}

struct SocialsAuthView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SocialsAuthView(title: "Or Login with")
            SocialsAuthView(title: "Or Register with")
        }
        .padding(22)
    }
}
