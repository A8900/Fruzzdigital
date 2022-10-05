//
//  BackButton.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct BackButton: View {
    
    let action: DismissAction
    
    var body: some View {
        Button(action: { action() }) {
            Image("back")
                .foregroundColor(Color .dark)
                .frame(width: 41, height: 41)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color .white1, lineWidth: 1))
        }
    }
}

//struct BackButton_Previews: PreviewProvider {
//    static var previews: some View {
//        BackButton()
//    }
//}
