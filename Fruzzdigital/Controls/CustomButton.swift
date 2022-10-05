//
//  CustomButton.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct CustomButton: View {
    let button1 : String
    
    var body: some View {
        
        Button(action: {}) {
            Text(button1)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .font(.urbanist600)
                .foregroundColor(.white)
                .cornerRadius(8)
            
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
//        CustomButton()
        VStack{
            CustomButton(button1: "Login")
        }
    }
}
