//
//  OTPButtonView.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct OTPButtonView: View {
    
    let text: String
    
    var body: some View {
        Button {} label: {
            Text(text)
                .foregroundColor(Color .dark)
                .frame(width: 70, height: 60)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .primary1, lineWidth: 1))
                .font(.urbanist700i)
        }
    }
}

struct OTPButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OTPButtonView(text: "5")
    }
}
