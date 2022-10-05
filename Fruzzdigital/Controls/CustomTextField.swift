//
//  CustomTextField.swift
//  Fruzzdigital
//
//  Created by grand ahmad on 09/03/1444 AH.
//

import SwiftUI

struct CustomTextField: View {
    
    let title: String
    @State var text: String = ""
    @State private var showPassword: Bool = false
    let imageName: String?
    let password: Bool
    
    init(title: String, imageName: String? = nil, password: Bool = false) {
        self.title = title
        self.password = password
        self.imageName = imageName
    }
    
    var body: some View {
        HStack {
            if password && showPassword == false {
                SecureField(title, text: $text)
                    .font(.urbanist500)
                    .foregroundColor(.gray)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    
            } else {
                TextField(title, text: $text)
                    .font(.urbanist500)
                    .foregroundColor(.gray)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
            }
            Spacer()
            if let imageName = imageName {
                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(imageName)
                }
            }
        }
        .padding(.horizontal, 18)
        .frame(height: 56)
        .background(Color.white2)
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color .white1, lineWidth: 1))

    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomTextField(title: "Enter your email")
            CustomTextField(title: "Enter your password", imageName: "person", password: true)
        }
        .padding(22)
        
    }
}
