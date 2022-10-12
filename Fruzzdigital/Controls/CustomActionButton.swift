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
    let isDisabled: Bool
    
    init(title: String, action: @escaping () -> Void, isDisabled: Bool = false) {
        self.title = title
        self.action = action
        self.isDisabled = isDisabled
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(isDisabled ? Color.gray : Color.dark)
                .font(.urbanist600)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .disabled(isDisabled)
    }
}

struct CustomActionButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomActionButton(title: "Login", action: {})
        }
    }
}
