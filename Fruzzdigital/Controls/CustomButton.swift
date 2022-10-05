//
//  CustomButton.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct CustomButton: View {
    let title : String
    var body: some View {
        Text(title)
            .frame(height: 56)
            .frame(maxWidth: .infinity)
            .background(Color.dark)
            .font(.urbanist600)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Button")
    }
}
