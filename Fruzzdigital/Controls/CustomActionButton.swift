//
//  CustomButton.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct CustomActionButton: View {
    let title : String
    let action: () -> ()
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(Color.dark)
                .font(.urbanist600)
                .foregroundColor(.white)
                .cornerRadius(8)
            
        }
    }
}

struct CustomActionButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomActionButton(title: "Login", action: {})
        }
    }
}
